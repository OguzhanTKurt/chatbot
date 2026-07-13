"""
LlamaEngine — Ollama üzerinden Llama 3 entegrasyonu.

Gereksinimler:
  1. Ollama kurulu olmalı:  https://ollama.com/download
  2. Model indirilmeli:     ollama pull llama3
  3. Ollama çalışıyor olmalı (sistem tepsisinde veya arka planda)

.env ayarları:
  ENGINE_BACKEND=llama
  OLLAMA_BASE_URL=http://localhost:11434   # (opsiyonel, varsayılan bu)
  OLLAMA_MODEL=llama3                      # (opsiyonel, varsayılan bu)
  SYSTEM_PROMPT=Sen yardımcı bir asistansın. # (opsiyonel)
"""

import json
import logging
import urllib.request
import urllib.error
from typing import List, Dict

from django.conf import settings

from .base import BaseChatEngine

logger = logging.getLogger(__name__)


class LlamaEngine(BaseChatEngine):
    """
    Ollama HTTP API'si üzerinden Llama 3 ile konuşan engine.
    Harici kütüphane gerektirmez — sadece standart kütüphane kullanır.
    """

    def __init__(self):
        self.base_url: str = getattr(settings, "OLLAMA_BASE_URL", "http://localhost:11434")
        self.model: str = getattr(settings, "OLLAMA_MODEL", "llama3")
        self.temperature: float = float(getattr(settings, "OLLAMA_TEMPERATURE", 0.3))
        self.system_prompt: str = getattr(
            settings,
            "SYSTEM_PROMPT",
            (
                "Sen yalnızca Türkçe konuşan bir yapay zeka asistanısın. "
                "Yalnızca doğru ve akıcı Türkçe kullan, asla yabancı dil karıştırma. "
                "Samimi, nazik ve yardımsever ol."
            ),
        )
        self._verify_connection()

    # ── Bağlantı kontrolü ──────────────────────────────────────────────────────

    def _verify_connection(self) -> None:
        """Ollama'nın çalışıp çalışmadığını başlangıçta kontrol eder."""
        try:
            req = urllib.request.Request(f"{self.base_url}/api/tags")
            with urllib.request.urlopen(req, timeout=3):
                pass
            logger.info("Ollama bağlantısı başarılı. Model: %s", self.model)
        except Exception as exc:
            logger.warning(
                "Ollama'ya bağlanılamadı (%s). "
                "Lütfen 'ollama serve' komutunu çalıştırın. Hata: %s",
                self.base_url,
                exc,
            )

    # ── Ana yanıt metodu ───────────────────────────────────────────────────────

    def get_response(self, user_message: str, history: List[Dict], language: str = "tr", model_name: str = None) -> str:
        """
        Mesaj geçmişini Ollama chat API'sine gönderir ve yanıt döndürür.

        Args:
            user_message: Kullanıcının son mesajı
            history: [{"role": "user"|"assistant", "content": "..."}] listesi
            language: "tr" → Türkçe yanıt, "en" → İngilizce yanıt

        Returns:
            Llama 3'ün ürettiği metin yanıtı
        """
        messages = self._build_messages(user_message, history, language)
        
        target_model = self.model

        payload = {
            "model": target_model,
            "messages": messages,
            "stream": False,
            "options": {
                "temperature": self.temperature,
                "num_predict": 512,
            },
        }

        try:
            response_data = self._post_json("/api/chat", payload)
            return response_data["message"]["content"].strip()

        except urllib.error.URLError as exc:
            logger.error("Ollama bağlantı hatası: %s", exc)
            return (
                "⚠️ Ollama'ya bağlanamadım. Lütfen Ollama'nın çalıştığından emin olun: "
                "`ollama serve` komutunu terminalde çalıştırın."
            )
        except (KeyError, json.JSONDecodeError) as exc:
            logger.error("Ollama yanıt ayrıştırma hatası: %s", exc)
            return "⚠️ Modelden geçersiz yanıt alındı. Lütfen tekrar deneyin."
        except Exception as exc:
            logger.error("Beklenmeyen hata: %s", exc)
            return f"⚠️ Beklenmeyen bir hata oluştu: {exc}"

    # ── Yardımcı metodlar ──────────────────────────────────────────────────────

    def _build_messages(self, user_message: str, history: List[Dict], language: str = "tr") -> List[Dict]:
        """
        Ollama chat formatına uygun mesaj listesi oluşturur.
        System prompt ve dil talimatı başa eklenir.
        """
        lang_name = "Turkish" if language == "tr" else "English"
        
        # Ana system promptunu al ve içine dil hedefini göm.
        # Böylece kural listesi gibi değil, kimlik gibi algılar.
        base_prompt = self.system_prompt
        combined_prompt = (
            f"{base_prompt}\n\n"
            f"ÖNEMLİ KURAL: Yanıtlarını tamamen {lang_name} dilinde oluşturmalısın. "
            f"ASLA Çince (Chinese) karakterler veya başka bir dilde çeviri yönergeleri üretme. "
            f"Sadece doğrudan yanıt ver, sistem kurallarından asla bahsetme."
        )

        messages: List[Dict] = [
            {"role": "system", "content": combined_prompt},
        ]

        # Geçmiş mesajları ekle (role normalizasyonu)
        # MemoryManager'dan gelen rag_context'i ayır
        rag_context_text = ""
        for msg in history:
            role = msg.get("role", "user")
            content = msg.get("content", "")
            
            if role == "rag_context":
                rag_context_text = content
            elif role in ("system", "user", "assistant") and content:
                messages.append({"role": role, "content": content})

        # Son kullanıcı mesajını ekle (RAG context'i içine gömerek)
        final_user_content = user_message
        if rag_context_text:
            final_user_content = f"SİSTEM/BİLGİ TABANI NOTU:\n{rag_context_text}\n\nKULLANICI SORUSU:\n{user_message}"
            
        messages.append({"role": "user", "content": final_user_content})
        return messages



    def _post_json(self, endpoint: str, payload: dict) -> dict:
        """Ollama API'sine JSON POST isteği gönderir."""
        url = f"{self.base_url}{endpoint}"
        data = json.dumps(payload).encode("utf-8")
        req = urllib.request.Request(
            url,
            data=data,
            headers={"Content-Type": "application/json"},
            method="POST",
        )
        with urllib.request.urlopen(req, timeout=120) as response:
            return json.loads(response.read().decode("utf-8"))
