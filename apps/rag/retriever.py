from django.db import models
from pgvector.django import CosineDistance
from apps.rag.models import DocumentChunk
from rank_bm25 import BM25Okapi
from apps.rag.chunker import embedding_model

class HybridRetriever:
    """
    pgvector (Dense) ve BM25 (Sparse) ile Hybrid arama yapan ve RRF ile sonuçları birleştiren Retriever.
    """
    def __init__(self, rrf_k=60):
        self.rrf_k = rrf_k

    def search(self, query, conversation=None, top_k=5):
        # 1. Aramayı sadece kullanıcının sohbeti ve global dokümanlarda kısıtla
        q_filter = models.Q(global_document__isnull=False)
        if conversation:
            q_filter |= models.Q(conversation=conversation)
            
        base_qs = DocumentChunk.objects.filter(q_filter)
        if not base_qs.exists():
            return []

        # 2. Dense Search (pgvector ile Cosine Distance)
        query_embedding = embedding_model.encode(query).tolist()
        vector_results = list(base_qs.order_by(CosineDistance('embedding', query_embedding))[:20])
        
        # 3. Sparse Search (BM25 ile Anahtar Kelime Araması)
        all_chunks = list(base_qs.all())
        tokenized_corpus = [chunk.text.split() for chunk in all_chunks]
        bm25 = BM25Okapi(tokenized_corpus)
        
        tokenized_query = query.split()
        bm25_scores = bm25.get_scores(tokenized_query)
        
        # BM25 sonuçlarını skorlarına göre sırala (en yüksek skor en iyi)
        chunk_score_pairs = list(zip(all_chunks, bm25_scores))
        chunk_score_pairs.sort(key=lambda x: x[1], reverse=True)
        bm25_results = [pair[0] for pair in chunk_score_pairs[:20]]

        # 4. RRF (Reciprocal Rank Fusion)
        rrf_scores = {}
        
        for rank, chunk in enumerate(vector_results):
            if chunk.id not in rrf_scores:
                rrf_scores[chunk.id] = {'chunk': chunk, 'score': 0}
            rrf_scores[chunk.id]['score'] += 1.0 / (self.rrf_k + rank + 1)
            
        for rank, chunk in enumerate(bm25_results):
            if chunk.id not in rrf_scores:
                rrf_scores[chunk.id] = {'chunk': chunk, 'score': 0}
            rrf_scores[chunk.id]['score'] += 1.0 / (self.rrf_k + rank + 1)

        # En yüksek RRF skoruna sahip olanları sırala
        ranked_chunks = sorted(rrf_scores.values(), key=lambda x: x['score'], reverse=True)
        
        # Sadece top_k kadarını döndür
        return [item['chunk'] for item in ranked_chunks[:top_k]]
