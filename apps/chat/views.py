"""
Chat views — REST API endpoint implementasyonları.
"""

from django.conf import settings
from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response

from .models import Conversation, Message
from .serializers import (
    ConversationSerializer,
    MessageSerializer,
    SendMessageSerializer,
)
from apps.engine.factory import get_engine
from apps.engine.memory import MemoryManager


# ── Sohbet Listesi & Oluşturma ────────────────────────────────────────────────

@api_view(["GET", "POST"])
def conversation_list_create(request):
    """
    GET  /api/chat/conversations/      — Tüm sohbetleri listele
    POST /api/chat/conversations/      — Yeni sohbet başlat
    """
    if request.method == "GET":
        conversations = Conversation.objects.all()
        serializer = ConversationSerializer(conversations, many=True)
        return Response(serializer.data)

    # POST — yeni sohbet
    serializer = ConversationSerializer(data=request.data)
    if serializer.is_valid():
        conversation = serializer.save()
        return Response(
            ConversationSerializer(conversation).data,
            status=status.HTTP_201_CREATED,
        )
    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


# ── Sohbet Detayı & Silme ─────────────────────────────────────────────────────

@api_view(["GET", "DELETE"])
def conversation_detail(request, conversation_id):
    """
    GET    /api/chat/conversations/<id>/   — Sohbet detayı
    DELETE /api/chat/conversations/<id>/   — Sohbeti sil
    """
    try:
        conversation = Conversation.objects.get(pk=conversation_id)
    except Conversation.DoesNotExist:
        return Response({"error": "Sohbet bulunamadı."}, status=status.HTTP_404_NOT_FOUND)

    if request.method == "GET":
        serializer = ConversationSerializer(conversation)
        return Response(serializer.data)

    # DELETE
    conversation.delete()
    return Response(status=status.HTTP_204_NO_CONTENT)


# ── Mesaj Geçmişi ─────────────────────────────────────────────────────────────

@api_view(["GET"])
def message_list(request, conversation_id):
    """
    GET /api/chat/conversations/<id>/messages/   — Sohbet geçmişi
    """
    try:
        conversation = Conversation.objects.get(pk=conversation_id)
    except Conversation.DoesNotExist:
        return Response({"error": "Sohbet bulunamadı."}, status=status.HTTP_404_NOT_FOUND)

    messages = conversation.messages.all()
    serializer = MessageSerializer(messages, many=True)
    return Response(serializer.data)


# ── Mesaj Gönder & Yanıt Al ───────────────────────────────────────────────────

@api_view(["POST"])
def send_message(request, conversation_id):
    """
    POST /api/chat/conversations/<id>/message/

    Body: {"content": "Mesaj metni"}
    Yanıt: {"user_message": {...}, "assistant_message": {...}}
    """
    try:
        conversation = Conversation.objects.get(pk=conversation_id)
    except Conversation.DoesNotExist:
        return Response({"error": "Sohbet bulunamadı."}, status=status.HTTP_404_NOT_FOUND)

    # Gelen mesajı doğrula
    serializer = SendMessageSerializer(data=request.data)
    if not serializer.is_valid():
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    user_content = serializer.validated_data["content"]
    language     = serializer.validated_data.get("language", "tr")
    model_name   = serializer.validated_data.get("model", None)

    # Kullanıcı mesajını kaydet
    user_msg = Message.objects.create(
        conversation=conversation,
        role="user",
        content=user_content,
    )

    # Hybrid Memory: Context oluştur
    memory_manager = MemoryManager()
    history = memory_manager.build_context(conversation, user_content)

    # Fast-Path Bypass for Empty
    if history and len(history) > 0 and history[-1].get("role") == "rag_context" and history[-1].get("content") == "__FAST_EMPTY__":
        assistant_content = "Bu konuda yeterli bilgiye sahip değilim."
    else:
        # Engine'den yanıt al
        engine = get_engine()
        assistant_content = engine.get_response(user_content, history, language=language, model_name=model_name)

    # Asistan yanıtını kaydet
    assistant_msg = Message.objects.create(
        conversation=conversation,
        role="assistant",
        content=assistant_content,
    )

    # Sohbet başlığını güncelle (ilk mesajdan türet)
    if conversation.title in ("Yeni Sohbet", "New Chat"):
        conversation.title = user_content[:50] + ("..." if len(user_content) > 50 else "")
        conversation.save(update_fields=["title", "updated_at"])

    return Response(
        {
            "user_message": MessageSerializer(user_msg).data,
            "assistant_message": MessageSerializer(assistant_msg).data,
        },
        status=status.HTTP_201_CREATED,
    )
