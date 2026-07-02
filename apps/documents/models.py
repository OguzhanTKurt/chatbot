import uuid
from django.db import models
from apps.chat.models import Conversation

class Document(models.Model):
    """
    Kullanıcının sohbete yüklediği PDF, Excel, Word vb. dokümanlar.
    """
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    conversation = models.ForeignKey(
        Conversation,
        on_delete=models.CASCADE,
        related_name="documents",
    )
    file = models.FileField(upload_to="documents/")
    filename = models.CharField(max_length=255)
    extracted_text = models.TextField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        ordering = ["created_at"]
        verbose_name = "Doküman"
        verbose_name_plural = "Dokümanlar"

    def __str__(self):
        return f"{self.filename} ({self.conversation.id})"


class GlobalDocument(models.Model):
    """
    Sistemdeki tüm sohbetlerde geçerli olan global doküman.
    """
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    file = models.FileField(upload_to="global_documents/")
    filename = models.CharField(max_length=255)
    extracted_text = models.TextField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        ordering = ["created_at"]
        verbose_name = "Global Doküman"
        verbose_name_plural = "Global Dokümanlar"

    def __str__(self):
        return self.filename
