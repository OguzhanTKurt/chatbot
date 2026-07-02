"""
Chat serializers.
"""

from rest_framework import serializers
from .models import Conversation, Message
from apps.documents.models import Document


class MessageSerializer(serializers.ModelSerializer):
    class Meta:
        model = Message
        fields = ["id", "role", "content", "created_at"]
        read_only_fields = ["id", "role", "created_at"]


class DocumentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Document
        fields = ["id", "filename", "created_at"]
        read_only_fields = ["id", "filename", "created_at"]


class ConversationSerializer(serializers.ModelSerializer):
    message_count = serializers.SerializerMethodField()
    documents = DocumentSerializer(many=True, read_only=True)

    class Meta:
        model = Conversation
        fields = ["id", "title", "created_at", "updated_at", "message_count", "documents"]
        read_only_fields = ["id", "created_at", "updated_at"]

    def get_message_count(self, obj):
        return obj.messages.count()


class SendMessageSerializer(serializers.Serializer):
    """Kullanıcıdan gelen mesaj isteği için."""
    content  = serializers.CharField(max_length=4096, allow_blank=False)
    language = serializers.ChoiceField(choices=["tr", "en"], default="tr", required=False)
    model    = serializers.CharField(max_length=50, default="llama3", required=False)
