"""
Chat admin kaydı — Admin panelinde sohbetleri ve mesajları görüntüle.
"""

from django.contrib import admin
from .models import Conversation, Message


class MessageInline(admin.TabularInline):
    model = Message
    extra = 0
    readonly_fields = ["id", "role", "content", "created_at"]


@admin.register(Conversation)
class ConversationAdmin(admin.ModelAdmin):
    list_display = ["title", "id", "created_at", "updated_at"]
    search_fields = ["title"]
    readonly_fields = ["id", "created_at", "updated_at"]
    inlines = [MessageInline]


@admin.register(Message)
class MessageAdmin(admin.ModelAdmin):
    list_display = ["role", "content_preview", "conversation", "created_at"]
    list_filter = ["role"]
    search_fields = ["content"]
    readonly_fields = ["id", "created_at"]

    def content_preview(self, obj):
        return obj.content[:80]
    content_preview.short_description = "İçerik"
