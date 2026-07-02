"""
Engine Base — Soyut arayüz tanımı.

Tüm chat engine'leri bu sınıftan türetilmelidir.
Bu sayede engine değişimi diğer katmanları etkilemez.
"""

from abc import ABC, abstractmethod
from typing import List, Dict


class BaseChatEngine(ABC):
    """
    Sohbet motoru için provider-agnostik arayüz.

    Yeni bir engine eklemek için:
    1. Bu sınıftan türet
    2. get_response() metodunu implement et
    3. apps/engine/factory.py'ye kaydet
    """

    @abstractmethod
    def get_response(self, user_message: str, history: List[Dict], language: str = "tr", model_name: str = None) -> str:
        """
        Kullanıcı mesajına yanıt üretir.

        Args:
            user_message: Kullanıcının son mesajı
            history: [{"role": "user"|"assistant", "content": "..."}] formatında
                     son CONTEXT_WINDOW kadar mesaj listesi
            language: Yanıt dili — "tr" (Türkçe) veya "en" (İngilizce)

        Returns:
            Asistan yanıtı (str)
        """
        ...
