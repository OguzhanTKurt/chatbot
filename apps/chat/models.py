"""
Chat modelleri — Conversation ve Message.
"""

import uuid
from django.db import models


class Conversation(models.Model):
    """
    Bir kullanıcı oturumunu temsil eder.
    Her oturum benzersiz bir UUID ile tanımlanır.
    """

    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    title = models.CharField(max_length=255, blank=True, default="Yeni Sohbet")
    summary = models.TextField(blank=True, null=True, help_text="Önceki mesajların yapay zeka tarafından oluşturulmuş özeti")
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        ordering = ["-updated_at"]
        verbose_name = "Sohbet"
        verbose_name_plural = "Sohbetler"

    def __str__(self):
        return f"{self.title} ({self.id})"


class Message(models.Model):
    """
    Bir sohbet içindeki tek bir mesaj.
    role: 'user' veya 'assistant'
    """

    ROLE_CHOICES = [
        ("user", "Kullanıcı"),
        ("assistant", "Asistan"),
    ]

    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    conversation = models.ForeignKey(
        Conversation,
        on_delete=models.CASCADE,
        related_name="messages",
    )
    role = models.CharField(max_length=20, choices=ROLE_CHOICES)
    content = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        ordering = ["created_at"]
        verbose_name = "Mesaj"
        verbose_name_plural = "Mesajlar"

    def __str__(self):
        return f"[{self.role}] {self.content[:60]}"

