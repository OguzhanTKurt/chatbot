import uuid
from django.db import models
from pgvector.django import VectorField
from apps.documents.models import Document, GlobalDocument
from apps.chat.models import Conversation

class DocumentChunk(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    
    # Bir chunk ya bir conversation document'ına ya da global document'a aittir.
    document = models.ForeignKey(Document, on_delete=models.CASCADE, null=True, blank=True, related_name="chunks")
    global_document = models.ForeignKey(GlobalDocument, on_delete=models.CASCADE, null=True, blank=True, related_name="chunks")
    conversation = models.ForeignKey(Conversation, on_delete=models.CASCADE, null=True, blank=True, related_name="chunks")
    
    text = models.TextField()
    
    # 384 dimensions is standard for all-MiniLM-L6-v2 (used for local embeddings)
    embedding = VectorField(dimensions=384, null=True, blank=True)
    
    created_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        ordering = ["created_at"]
        
    def __str__(self):
        doc_name = self.document.filename if self.document else (self.global_document.filename if self.global_document else "Unknown")
        return f"Chunk of {doc_name} ({self.id})"
