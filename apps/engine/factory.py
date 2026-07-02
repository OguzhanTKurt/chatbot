"""
Engine Factory — .env'deki ENGINE_BACKEND değerine göre
doğru engine'i yükler ve döndürür.

Yeni engine eklemek için:
1. apps/engine/ altında yeni bir modül oluşturun (BaseChatEngine'den türetin)
2. Bu dosyadaki _ENGINE_REGISTRY sözlüğüne kaydedin
3. .env'de ENGINE_BACKEND değerini güncelleyin
"""

from django.conf import settings

from .base import BaseChatEngine

# ── Engine kaydı ──────────────────────────────────────────────────────────────
# Yeni engine: {"engine_adı": "modül.yolu.SınıfAdı"}
_ENGINE_REGISTRY: dict[str, str] = {
    "llama":      "apps.engine.llama_engine.LlamaEngine",
    # "openai":   "apps.engine.openai_engine.OpenAIEngine",
}

# Singleton — her istek için yeniden oluşturma
_engine_instance: BaseChatEngine | None = None


def get_engine() -> BaseChatEngine:
    """
    Ayarlara göre uygun engine'i döndürür (singleton).
    """
    global _engine_instance

    if _engine_instance is None:
        backend_key = getattr(settings, "ENGINE_BACKEND", "llama")

        if backend_key not in _ENGINE_REGISTRY:
            raise ValueError(
                f"Bilinmeyen engine: '{backend_key}'. "
                f"Geçerli seçenekler: {list(_ENGINE_REGISTRY.keys())}"
            )

        # Dinamik import
        module_path, class_name = _ENGINE_REGISTRY[backend_key].rsplit(".", 1)
        import importlib
        module = importlib.import_module(module_path)
        engine_class = getattr(module, class_name)
        _engine_instance = engine_class()

    return _engine_instance
