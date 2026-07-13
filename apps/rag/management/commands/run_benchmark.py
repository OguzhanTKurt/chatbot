import json
import logging
import time
from pathlib import Path

from django.core.management.base import BaseCommand, CommandError
from django.conf import settings

from apps.chat.models import Conversation, Message
from apps.engine.memory import MemoryManager
from apps.engine.llama_engine import LlamaEngine

logger = logging.getLogger(__name__)

class Command(BaseCommand):
    help = "Faz 1 Soru-Cevap Test Setini (Benchmark) çalıştırır ve doğruluk oranını ölçer."

    def add_arguments(self, parser):
        parser.add_argument(
            "--file",
            type=str,
            default=str(settings.BASE_DIR / "config" / "test_set.json"),
            help="Test setini içeren JSON dosyası (Varsayılan: config/test_set.json)"
        )

    def handle(self, *args, **options):
        file_path = Path(options["file"])
        if not file_path.exists():
            raise CommandError(f"Test dosyası bulunamadı: {file_path}")

        with open(file_path, "r", encoding="utf-8") as f:
            test_data = json.load(f)

        self.stdout.write(self.style.MIGRATE_HEADING("═══════════════════════════════════════════════════"))
        self.stdout.write(self.style.MIGRATE_HEADING("  AKTAP Chatbot Benchmark & QA Testi"))
        self.stdout.write(self.style.MIGRATE_HEADING("═══════════════════════════════════════════════════"))
        self.stdout.write(f"  Test Dosyası: {file_path.name}")
        self.stdout.write(f"  Toplam Soru : {len(test_data)}")
        self.stdout.write("")

        memory_manager = MemoryManager()
        engine = LlamaEngine()

        # Test için geçici bir sohbet oluştur
        conversation = Conversation.objects.create(title="Benchmark Test Session")

        results = []
        start_time = time.time()

        for idx, item in enumerate(test_data, 1):
            q_id = item.get("id", idx)
            question = item["question"]

            self.stdout.write(self.style.MIGRATE_HEADING(f"╭── Soru {idx}/{len(test_data)} ".ljust(80, "─")))
            self.stdout.write(self.style.WARNING(f"│ Q: {question}"))

            # 1. Kullanıcı mesajını kaydet
            user_msg = Message.objects.create(
                conversation=conversation,
                role="user",
                content=question
            )

            # 2. Context oluştur (RAG)
            context = memory_manager.build_context(conversation, question)

            # 3. Modele gönder
            response_text = engine.get_response(question, context, language="tr")

            # 4. Asistan mesajını kaydet
            Message.objects.create(
                conversation=conversation,
                role="assistant",
                content=response_text
            )

            # Ekrana Yanıtı Bas
            clean_response = response_text.replace('\r\n', '\n').replace('\r', '')
            formatted_response = clean_response.strip().replace('\n', '\n│    ')
            self.stdout.write(f"│ A: {formatted_response}")
            self.stdout.write(self.style.MIGRATE_HEADING("╰" + ("─" * 79)))
            self.stdout.write("")

            results.append({
                "id": q_id,
                "question": question,
                "response": response_text
            })

        # Temizlik
        conversation.delete()

        elapsed = time.time() - start_time

        self.stdout.write(self.style.MIGRATE_HEADING("╔══════════════════════════════════════════════════════════════════════════════╗"))
        self.stdout.write(self.style.MIGRATE_HEADING("║                             TEST TAMAMLANDI                                  ║"))
        self.stdout.write(self.style.MIGRATE_HEADING("╠══════════════════════════════════════════════════════════════════════════════╣"))
        self.stdout.write(f"║  Süre     : {elapsed:.1f} saniye".ljust(79) + "║")
        self.stdout.write(f"║  Toplam Soru : {len(test_data)}".ljust(79) + "║")
        self.stdout.write(self.style.MIGRATE_HEADING("╚══════════════════════════════════════════════════════════════════════════════╝"))

        # Detaylı sonuçları JSON olarak kaydet
        out_path = Path("benchmark_results.json")
        with open(out_path, "w", encoding="utf-8") as f:
            json.dump({
                "results": results
            }, f, ensure_ascii=False, indent=2)
            
        self.stdout.write(f"Tüm yanıtlar '{out_path.name}' dosyasına da kaydedildi.")
