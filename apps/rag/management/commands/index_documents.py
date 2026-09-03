"""
index_documents — AKTAP Doküman Embedding Pipeline

Kullanım:
    # Bir dizindeki tüm dokümanları global olarak indeksle
    python manage.py index_documents --directory ./global_documents/

    # Belirli bir dosyayı indeksle
    python manage.py index_documents --file ./global_documents/bash.pdf

    # Veritabanındaki mevcut GlobalDocument'ları yeniden indeksle
    python manage.py index_documents --reindex

    # Tümünü sil ve sıfırdan indeksle
    python manage.py index_documents --directory ./global_documents/ --flush

Desteklenen formatlar: .pdf, .docx, .xlsx, .csv, .txt
"""

import os
import time
import logging
from pathlib import Path

from django.core.management.base import BaseCommand, CommandError
from django.core.files.base import ContentFile
from django.db import transaction

from apps.documents.models import GlobalDocument
from apps.rag.models import DocumentChunk
from apps.engine.document_parser import parse_document
from apps.rag.chunker import DocumentChunker

logger = logging.getLogger(__name__)

# Desteklenen dosya uzantıları
SUPPORTED_EXTENSIONS = {".pdf", ".docx", ".xlsx", ".csv", ".txt"}


class Command(BaseCommand):
    help = (
        "AKTAP dokümanlarını parse eder, chunk'lara ayırır, embedding hesaplar "
        "ve pgvector veritabanına kaydeder. Faz 1 embedding pipeline."
    )

    def add_arguments(self, parser):
        parser.add_argument(
            "--directory",
            type=str,
            help="İndekslenecek dokümanların bulunduğu dizin yolu.",
        )
        parser.add_argument(
            "--file",
            type=str,
            help="İndekslenecek tek bir dosya yolu.",
        )
        parser.add_argument(
            "--reindex",
            action="store_true",
            help="Veritabanındaki mevcut tüm GlobalDocument'ları yeniden indeksle.",
        )
        parser.add_argument(
            "--flush",
            action="store_true",
            help="İndeksleme öncesi mevcut tüm GlobalDocument chunk'larını sil.",
        )
        parser.add_argument(
            "--chunk-size",
            type=int,
            default=300,
            help="Chunk boyutu (kelime sayısı). Varsayılan: 300",
        )
        parser.add_argument(
            "--chunk-overlap",
            type=int,
            default=50,
            help="Chunk'lar arası örtüşme (kelime sayısı). Varsayılan: 50",
        )

    def handle(self, *args, **options):
        directory = options["directory"]
        file_path = options["file"]
        reindex = options["reindex"]
        flush = options["flush"]
        chunk_size = options["chunk_size"]
        chunk_overlap = options["chunk_overlap"]

        # Parametre doğrulama
        mode_count = sum([bool(directory), bool(file_path), reindex])
        if mode_count == 0:
            raise CommandError(
                "En az bir mod belirtmelisiniz: --directory, --file veya --reindex\n"
                "Örnek: python manage.py index_documents --directory ./global_documents/"
            )
        if mode_count > 1 and not (directory and flush):
            raise CommandError(
                "--directory, --file ve --reindex birlikte kullanılamaz."
            )

        chunker = DocumentChunker(chunk_size=chunk_size, chunk_overlap=chunk_overlap)

        self.stdout.write(self.style.MIGRATE_HEADING(
            "==================================================="
        ))
        self.stdout.write(self.style.MIGRATE_HEADING(
            "  AKTAP Doküman Embedding Pipeline"
        ))
        self.stdout.write(self.style.MIGRATE_HEADING(
            "==================================================="
        ))
        self.stdout.write(f"  Chunk boyutu:    {chunk_size} kelime")
        self.stdout.write(f"  Chunk örtüşme:   {chunk_overlap} kelime")
        self.stdout.write("")

        # ── Flush (opsiyonel) ─────────────────────────────────────────────
        if flush:
            self._flush_all()

        # ── Mod: Dizin indeksleme ─────────────────────────────────────────
        if directory:
            self._index_directory(directory, chunker)

        # ── Mod: Tek dosya indeksleme ─────────────────────────────────────
        elif file_path:
            self._index_single_file(file_path, chunker)

        # ── Mod: Mevcut GlobalDocument'ları yeniden indeksle ──────────────
        elif reindex:
            self._reindex_existing(chunker)

        self.stdout.write("")
        self.stdout.write(self.style.SUCCESS("[OK] Islem tamamlandi."))

    # ══════════════════════════════════════════════════════════════════════
    # Flush
    # ══════════════════════════════════════════════════════════════════════

    def _flush_all(self):
        """Tüm GlobalDocument chunk'larını siler."""
        count = DocumentChunk.objects.filter(
            global_document__isnull=False
        ).count()
        if count == 0:
            self.stdout.write("  [INFO] Silinecek chunk bulunamadı.")
            return

        self.stdout.write(
            self.style.WARNING(f"  [UYARI] {count} adet global chunk siliniyor...")
        )
        DocumentChunk.objects.filter(global_document__isnull=False).delete()
        self.stdout.write(self.style.SUCCESS(f"  [OK] {count} chunk silindi."))
        self.stdout.write("")

    # ======================================================================
    # Dizin İndeksleme
    # ======================================================================

    def _index_directory(self, directory: str, chunker: DocumentChunker):
        """Dizindeki tüm desteklenen dosyaları indeksler."""
        dir_path = Path(directory).resolve()
        if not dir_path.is_dir():
            raise CommandError(f"Dizin bulunamadı: {dir_path}")

        # Desteklenen dosyaları bul
        files = sorted([
            f for f in dir_path.iterdir()
            if f.is_file() and f.suffix.lower() in SUPPORTED_EXTENSIONS
        ])

        if not files:
            self.stdout.write(self.style.WARNING(
                f"  [UYARI] '{dir_path}' dizininde desteklenen dosya bulunamadı."
            ))
            self.stdout.write(
                f"  Desteklenen formatlar: {', '.join(SUPPORTED_EXTENSIONS)}"
            )
            return

        self.stdout.write(f"  [DIR] Dizin: {dir_path}")
        self.stdout.write(f"  [FILE] {len(files)} dosya bulundu.\n")

        total_chunks = 0
        success_count = 0
        fail_count = 0

        for i, file_path in enumerate(files, 1):
            self.stdout.write(
                f"  [{i}/{len(files)}] {file_path.name}",
                ending=""
            )
            try:
                chunk_count = self._process_file(file_path, chunker)
                total_chunks += chunk_count
                success_count += 1
                self.stdout.write(
                    self.style.SUCCESS(f" -> {chunk_count} chunk [OK]")
                )
            except Exception as e:
                fail_count += 1
                self.stdout.write(
                    self.style.ERROR(f" -> HATA: {e}")
                )
                logger.error("Dosya indekslenirken hata (%s): %s", file_path.name, e)

        self.stdout.write("")
        self.stdout.write(f"  [SUMMARY] Özet: {success_count} başarılı, {fail_count} başarısız")
        self.stdout.write(f"  [SUMMARY] Toplam chunk sayısı: {total_chunks}")

    # ======================================================================
    # Tek Dosya İndeksleme
    # ======================================================================

    def _index_single_file(self, file_path: str, chunker: DocumentChunker):
        """Tek bir dosyayı indeksler."""
        path = Path(file_path).resolve()
        if not path.is_file():
            raise CommandError(f"Dosya bulunamadı: {path}")
        if path.suffix.lower() not in SUPPORTED_EXTENSIONS:
            raise CommandError(
                f"Desteklenmeyen format: {path.suffix}\n"
                f"Desteklenen: {', '.join(SUPPORTED_EXTENSIONS)}"
            )

        self.stdout.write(f"  [FILE] Dosya: {path.name}")

        try:
            chunk_count = self._process_file(path, chunker)
            self.stdout.write(self.style.SUCCESS(
                f"  [OK] {chunk_count} chunk oluşturuldu ve indekslendi."
            ))
        except Exception as e:
            raise CommandError(f"Dosya indekslenirken hata: {e}")

    # ======================================================================
    # Mevcut GlobalDocument'ları Yeniden İndeksleme
    # ======================================================================

    def _reindex_existing(self, chunker: DocumentChunker):
        """Veritabanındaki mevcut GlobalDocument'ları yeniden indeksler."""
        documents = GlobalDocument.objects.all()
        count = documents.count()

        if count == 0:
            self.stdout.write(self.style.WARNING(
                "  [UYARI] Veritabanında GlobalDocument bulunamadı."
            ))
            return

        self.stdout.write(f"  [DOCS] {count} adet mevcut doküman yeniden indekslenecek.\n")

        total_chunks = 0
        success_count = 0
        fail_count = 0

        for i, doc in enumerate(documents, 1):
            self.stdout.write(
                f"  [{i}/{count}] {doc.filename}",
                ending=""
            )
            try:
                # Mevcut chunk'ları sil
                old_count = doc.chunks.count()
                if old_count > 0:
                    doc.chunks.all().delete()

                # extracted_text varsa kullan, yoksa dosyadan tekrar oku
                text = doc.extracted_text
                if not text and doc.file:
                    text = parse_document(doc.file.path, doc.filename)
                    doc.extracted_text = text
                    doc.save(update_fields=["extracted_text"])

                if not text or not text.strip():
                    self.stdout.write(
                        self.style.WARNING(" -> Boş içerik, atlanıyor [UYARI]")
                    )
                    continue

                chunks = chunker.chunk_and_save(
                    text, global_document=doc
                )
                chunk_count = len(chunks)
                total_chunks += chunk_count
                success_count += 1
                self.stdout.write(
                    self.style.SUCCESS(
                        f" -> {old_count} eski chunk silindi, {chunk_count} yeni chunk [OK]"
                    )
                )
            except Exception as e:
                fail_count += 1
                self.stdout.write(self.style.ERROR(f" -> HATA: {e}"))
                logger.error(
                    "Doküman yeniden indekslenirken hata (%s): %s",
                    doc.filename, e
                )

        self.stdout.write("")
        self.stdout.write(f"  [SUMMARY] Özet: {success_count} başarılı, {fail_count} başarısız")
        self.stdout.write(f"  [SUMMARY] Toplam chunk sayısı: {total_chunks}")

    # ══════════════════════════════════════════════════════════════════════
    # Ortak: Dosya İşleme
    # ══════════════════════════════════════════════════════════════════════

    def _process_file(self, file_path: Path, chunker: DocumentChunker) -> int:
        """
        Dosyayı parse eder, GlobalDocument oluşturur (veya günceller),
        chunk'lar ve embedding'leri kaydeder.

        Returns:
            Oluşturulan chunk sayısı
        """
        filename = file_path.name
        start_time = time.time()

        # Mevcut GlobalDocument var mı kontrol et
        existing = GlobalDocument.objects.filter(filename=filename).first()

        if existing:
            # Mevcut dokümanın chunk'larını sil ve yeniden indeksle
            existing.chunks.all().delete()
            doc = existing
        else:
            # Yeni GlobalDocument oluştur — dosyayı Django FileField'a kopyala
            with open(file_path, "rb") as f:
                file_content = f.read()

            doc = GlobalDocument(filename=filename)
            doc.file.save(filename, ContentFile(file_content), save=False)
            doc.save()

        # Dosyayı parse et
        extracted_text = parse_document(str(file_path), filename)

        if not extracted_text or not extracted_text.strip():
            raise ValueError(f"Dosyadan metin çıkarılamadı: {filename}")

        # extracted_text'i kaydet
        doc.extracted_text = extracted_text
        doc.save(update_fields=["extracted_text"])

        # Chunk'la ve embedding hesapla
        chunks = chunker.chunk_and_save(
            extracted_text, global_document=doc
        )

        elapsed = time.time() - start_time
        logger.info(
            "İndeksleme tamamlandı: %s → %d chunk (%.1f sn)",
            filename, len(chunks), elapsed
        )

        return len(chunks)
