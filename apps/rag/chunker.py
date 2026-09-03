from sentence_transformers import SentenceTransformer
from apps.rag.models import DocumentChunk
from django.db import transaction

# Model global olarak lazy-load ile yüklenecek
_embedding_model = None

def get_embedding_model():
    global _embedding_model
    if _embedding_model is None:
        model_name = 'paraphrase-multilingual-MiniLM-L12-v2'
        try:
            _embedding_model = SentenceTransformer(model_name, local_files_only=True)
        except Exception:
            import os
            os.environ["HF_HUB_OFFLINE"] = "0"
            os.environ["TRANSFORMERS_OFFLINE"] = "0"
            _embedding_model = SentenceTransformer(model_name, local_files_only=False)
    return _embedding_model

class DocumentChunker:
    """
    Belgeleri belirli boyutlarda parçalara (chunk) ayırır ve pgvector veritabanına kaydeder.
    """
    def __init__(self, chunk_size=300, chunk_overlap=50):
        self.chunk_size = chunk_size
        self.chunk_overlap = chunk_overlap

    def chunk_and_save(self, text, document=None, global_document=None, conversation=None):
        """
        Metni parçalar, embedding'lerini hesaplar ve DocumentChunk modeli olarak kaydeder.
        """
        words = text.split()
        chunks = []
        i = 0
        while i < len(words):
            chunk_words = words[i: i + self.chunk_size]
            chunk_text = " ".join(chunk_words)
            chunks.append(chunk_text)
            i += (self.chunk_size - self.chunk_overlap)
            
        # Vektörleri hesapla
        embedding_model = get_embedding_model()
        embeddings = embedding_model.encode(chunks, show_progress_bar=False)
        
        # Veritabanına kaydet
        chunk_objects = []
        for chunk_txt, emb in zip(chunks, embeddings):
            chunk_objects.append(
                DocumentChunk(
                    text=chunk_txt,
                    embedding=emb.tolist(),
                    document=document,
                    global_document=global_document,
                    conversation=conversation
                )
            )
            
        with transaction.atomic():
            DocumentChunk.objects.bulk_create(chunk_objects)
        
        return chunk_objects
