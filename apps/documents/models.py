import os
import logging
import uuid
from django.db import models
from django.db.models.signals import post_delete
from django.dispatch import receiver
from apps.chat.models import Conversation

logger = logging.getLogger(__name__)

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
    Sistemdeki tüm sohbetlerde geçerli olan sabit (const / global) doküman.
    Sohbet silme işlemlerinden etkilenmez.
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


@receiver(post_delete, sender=Document)
def delete_document_file_on_delete(sender, instance, **kwargs):
    """
    Sohbet silindiğinde veya sohbet dokümanı silindiğinde diskteki fiziksel dosyayı otomatik olarak siler.
    Sabit (const / global) dokümanlara ve global_documents klasörüne asla dokunmaz.
    """
    if instance.file:
        try:
            if os.path.isfile(instance.file.path):
                os.remove(instance.file.path)
                logger.info(f"Sohbet dosyası diskten silindi: {instance.file.path}")
        except Exception as e:
            logger.error(f"Sohbet dosyası silinirken hata: {e}")

