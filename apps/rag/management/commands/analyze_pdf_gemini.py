"""
analyze_pdf_gemini — TOFAŞ Kalıp PDF Şemalarını Gemini Vision API ile Yorumlama ve Vektör Veritabanına İndeksleme Komutu

Kullanım:
    python manage.py analyze_pdf_gemini --pdf ./global_documents/TOFAS_KALIP_YAPIM_ŞARTNAMESİ_P26_zhQQ6rf.pdf
    python manage.py analyze_pdf_gemini --pdf ./global_documents/bash.pdf --flush
    python manage.py analyze_pdf_gemini --start-page 1 --end-page 10
"""

import os
import io
import time
import logging
from pathlib import Path
from PIL import Image

from django.core.management.base import BaseCommand, CommandError
from django.core.files.base import ContentFile
from django.conf import settings

from apps.documents.models import GlobalDocument
from apps.rag.models import DocumentChunk
from apps.rag.chunker import DocumentChunker

logger = logging.getLogger(__name__)


SYSTEM_ENGINEERING_PROMPT = (
    "Sen uzman bir TOFAŞ otomotiv kalıp ve imalat mühendisliği yapay zeka asistanısın. "
    "Sana verilen teknik PDF sayfasındaki/şemasındaki tüm çizimleri, kalıp elemanlarını, "
    "parça kodlarını, toleransları, boyutları, açıları ve teknik detayları eksiksiz, "
    "metinsiz diyagramlar dahil profesyonel Türkçe mühendislik jargonuyla açıkla. "
    "Çizimde görülen mekanik bileşenlerin işlevini ve şartname kurallarını net bir şekilde belirt."
)


class Command(BaseCommand):
    help = (
        "TOFAŞ Kalıp Şartnamesi PDF'indeki metinsiz ve şemalı sayfaları Gemini Multimodal Vision API "
        "kullanarak mühendislik açıklamalarına dönüştürür ve tek seferlik pgvector veritabanına kaydeder."
    )

    def add_arguments(self, parser):
        parser.add_argument(
            "--pdf",
            type=str,
            default="./global_documents/TOFAS_KALIP_YAPIM_ŞARTNAMESİ_P26_zhQQ6rf.pdf",
            help="Analiz edilecek PDF dosya yolu.",
        )
        parser.add_argument(
            "--api-key",
            type=str,
            default=None,
            help="Gemini API Anahtarı (Belirtilmezse .env'deki GEMINI_API_KEY kullanılır).",
        )
        parser.add_argument(
            "--start-page",
            type=int,
            default=1,
            help="Başlangıç sayfa numarası (1 tabanlı). Varsayılan: 1",
        )
        parser.add_argument(
            "--end-page",
            type=int,
            default=None,
            help="Bitiş sayfa numarası (Dahil). Varsayılan: Tüm sayfalar",
        )
        parser.add_argument(
            "--model",
            type=str,
            default="gemini-flash-latest",
            help="Kullanılacak Gemini modeli (ör: gemini-flash-latest, gemini-3.5-flash). Varsayılan: gemini-flash-latest",
        )
        parser.add_argument(
            "--flush",
            action="store_true",
            help="Analiz öncesi bu dokümana ait mevcut tüm veritabanı chunk'larını temizle.",
        )

    def handle(self, *args, **options):
        pdf_path_str = options["pdf"]
        api_key = options["api_key"] or getattr(settings, "GEMINI_API_KEY", "") or os.getenv("GEMINI_API_KEY", "")
        start_page = options["start_page"]
        end_page = options["end_page"]
        flush = options["flush"]
        gemini_model = options["model"]

        path = Path(pdf_path_str).resolve()
        if not path.is_file():
            raise CommandError(f"PDF dosyası bulunamadı: {path}")

        if not api_key or api_key == "YOUR_GEMINI_API_KEY":
            raise CommandError(
                "Geçerli bir Gemini API Anahtarı bulunamadı!\n"
                "Lütfen .env dosyasına GEMINI_API_KEY=your_key ekleyin veya --api-key parametresi ile verin."
            )

        # Google GenAI SDK Import
        try:
            from google import genai
        except ImportError:
            raise CommandError("google-genai paketi kurulu değil. 'pip install google-genai' çalıştırın.")

        try:
            from pdf2image import convert_from_path, pdfinfo_from_path
        except ImportError:
            raise CommandError("pdf2image paketi kurulu değil. 'pip install pdf2image' çalıştırın.")

        self.stdout.write(self.style.MIGRATE_HEADING("==================================================="))
        self.stdout.write(self.style.MIGRATE_HEADING("  Gemini Multimodal Vision PDF Analiz & İndeksleme"))
        self.stdout.write(self.style.MIGRATE_HEADING("==================================================="))
        self.stdout.write(f"  Dosya: {path.name}")
        self.stdout.write(f"  Model: {gemini_model}")

        # PDF Sayfa Sayısını Bilgiden Oku (Hafıza şişmesini engellemek için)
        try:
            info = pdfinfo_from_path(str(path))
            total_pdf_pages = info.get("Pages", 1)
        except Exception:
            total_pdf_pages = 100

        actual_end_page = min(end_page, total_pdf_pages) if end_page else total_pdf_pages
        self.stdout.write(f"  [1/2] İşlenecek sayfa aralığı: Sayfa {start_page} - {actual_end_page} (Toplam {total_pdf_pages} sayfa)")

        # GlobalDocument Oluştur veya Al
        existing_doc = GlobalDocument.objects.filter(filename=path.name).first()
        if existing_doc:
            doc = existing_doc
            if flush:
                self.stdout.write(self.style.WARNING(f"  [FLUSH] '{path.name}' dokümanına ait eski chunk'lar siliniyor..."))
                doc.chunks.all().delete()
        else:
            with open(path, "rb") as f:
                content = f.read()
            doc = GlobalDocument(filename=path.name)
            doc.file.save(path.name, ContentFile(content), save=False)
            doc.save()

        full_extracted_descriptions = []
        client = genai.Client(api_key=api_key)

        self.stdout.write("  [2/2] Sayfa sayfa resme dönüştürülüp Gemini Vision ile analiz ediliyor...\n")

        processed_count = 0
        for i in range(start_page, actual_end_page + 1):
            self.stdout.write(f"  ➜ Sayfa [{i}/{actual_end_page}] dönüştürülüyor ve Gemini'ye gönderiliyor ({gemini_model})...", ending="")
            
            try:
                page_images = convert_from_path(str(path), first_page=i, last_page=i)
                if not page_images:
                    self.stdout.write(self.style.WARNING(" [SAYFA DÖNÜŞTÜRÜLEMEDİ]"))
                    continue
                img = page_images[0]
            except Exception as conv_err:
                self.stdout.write(self.style.ERROR(f" [DÖNÜŞTÜRME HATASI: {conv_err}]"))
                continue

            max_retries = 3
            analysis_text = ""
            
            for attempt in range(1, max_retries + 1):
                try:
                    response = client.models.generate_content(
                        model=gemini_model,
                        contents=[
                            img,
                            SYSTEM_ENGINEERING_PROMPT
                        ]
                    )
                    analysis_text = response.text.strip() if response.text else ""
                    break
                except Exception as gemini_err:
                    err_msg = str(gemini_err)
                    if "429" in err_msg or "RESOURCE_EXHAUSTED" in err_msg:
                        if attempt == max_retries:
                            self.stdout.write(self.style.ERROR(f" [HATA: {gemini_err}]"))
                            break
                        wait_time = attempt * 3
                        self.stdout.write(self.style.WARNING(f"\n    [Rate Limit] {wait_time} sn bekleniyor..."), ending="")
                        time.sleep(wait_time)
                    else:
                        if attempt == max_retries:
                            self.stdout.write(self.style.ERROR(f" [HATA: {gemini_err}]"))
                            logger.error(f"Sayfa {i} Gemini analiz hatası: {gemini_err}")
                        time.sleep(1)

            # Temizlik (Bellek serbest bırakma)
            del img
            del page_images

            if analysis_text:
                processed_count += 1
                page_entry = f"--- [SAYFA {i} KALIP ŞEMASI VE TEKNİK ANALİZİ] ---\n{analysis_text}\n"
                full_extracted_descriptions.append(page_entry)
                self.stdout.write(self.style.SUCCESS(f" [OK] ({len(analysis_text)} karakter)"))
            else:
                self.stdout.write(self.style.WARNING(" [BOŞ]"))

            # Işık hızında işlem için minimal 0.2 saniye bekleme
            time.sleep(0.2)

        combined_text = "\n\n".join(full_extracted_descriptions)

        if not combined_text.strip():
            self.stdout.write(self.style.ERROR("\n[HATA] Hiçbir sayfadan analiz metni çıkarılamadı."))
            return

        # Veritabanına kaydet ve Chunk'la
        doc.extracted_text = combined_text
        doc.save(update_fields=["extracted_text"])

        self.stdout.write("\n  Vektörleştirme ve pgvector veritabanına kayıt başlatılıyor...")
        chunker = DocumentChunker(chunk_size=300, chunk_overlap=50)
        chunks = chunker.chunk_and_save(combined_text, global_document=doc)

        self.stdout.write(self.style.SUCCESS(
            f"\n===================================================\n"
            f"  [BAŞARILI] {processed_count} sayfa Gemini ile analiz edildi.\n"
            f"  Toplam {len(chunks)} adet vektör chunk'ı 'chatbot_db' veritabanına kaydedildi.\n"
            f"==================================================="
        ))
