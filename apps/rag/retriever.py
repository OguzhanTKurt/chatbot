import logging

from django.db import models
from django.db.models import F
from pgvector.django import CosineDistance
from apps.rag.models import DocumentChunk
from rank_bm25 import BM25Okapi
from apps.rag.chunker import get_embedding_model

logger = logging.getLogger(__name__)


class HybridRetriever:
    """
    pgvector (Dense) ve BM25 (Sparse) ile Hybrid arama yapan ve RRF ile
    sonuçları birleştiren Retriever.

    Halüsinasyon önleme: Cosine distance eşiği altında kalan sonuçlar
    filtrelenir. Hiçbir sonuç eşiği geçemezse boş liste döner ve
    MemoryManager'daki guardrail devreye girer.
    """

    def __init__(self, rrf_k=60, max_distance=0.65, min_bm25_score=1.5):
        """
        Args:
            rrf_k: RRF formülündeki k parametresi.
            max_distance: Cosine distance üst sınırı (0-2 arası).
                          0.45 → cosine similarity ≥ 0.55 olan sonuçlar geçer. Düşük tutularak alakasız dokümanların halüsinasyona sebep olması engellenir.
            min_bm25_score: BM25 minimum skor eşiği.
                            Altındaki sonuçlar filtrelenir.
        """
        self.rrf_k = rrf_k
        self.max_distance = max_distance
        self.min_bm25_score = min_bm25_score

    @staticmethod
    def _is_toc_chunk(text: str) -> bool:
        """Kullanıcının sorgusu İçindekiler sayfasındaki başlıkla çakıştığında başlık sayfasını eler."""
        if text.count("....") > 2 or text.count("...") > 6:
            if any(hdr in text for hdr in ["T10", "T05", "İÇİNDEKİLER", "Classification"]):
                if text.count(".") > 15:
                    return True
        return False

    @staticmethod
    def _tokenize(text: str) -> list:
        import re
        clean_txt = text.lower()
        clean_txt = re.sub(r'[^\w\s]', ' ', clean_txt)
        return [w for w in clean_txt.split() if len(w) > 1]

    def search(self, query, conversation=None, top_k=5):
        # 1. Aramayı sadece kullanıcının sohbeti ve global dokümanlarda kısıtla
        q_filter = models.Q(global_document__isnull=False)
        if conversation:
            q_filter |= models.Q(conversation=conversation)

        base_qs = DocumentChunk.objects.filter(q_filter)
        if not base_qs.exists():
            return []

        # 2. Dense Search (pgvector ile Cosine Distance + eşik filtresi)
        embedding_model = get_embedding_model()
        query_embedding = embedding_model.encode(query).tolist()
        vector_qs = (
            base_qs
            .annotate(distance=CosineDistance('embedding', query_embedding))
            .filter(distance__lt=self.max_distance)
            .order_by('distance')[:30]
        )
        vector_results = [c for c in vector_qs if not self._is_toc_chunk(c.text)]

        if not vector_results:
            logger.info(
                "Dense search: Eşik altında sonuç bulunamadı "
                "(max_distance=%.2f). Sorgu: '%s'",
                self.max_distance, query[:80]
            )

        # 3. Sparse Search (BM25 ile Normalize Edilmiş Anahtar Kelime Araması)
        all_chunks = [c for c in base_qs.all() if not self._is_toc_chunk(c.text)]
        if all_chunks:
            tokenized_corpus = [self._tokenize(chunk.text) for chunk in all_chunks]
            bm25 = BM25Okapi(tokenized_corpus)

            tokenized_query = self._tokenize(query)
            bm25_scores = bm25.get_scores(tokenized_query)

            chunk_score_pairs = [
                (chunk, score)
                for chunk, score in zip(all_chunks, bm25_scores)
                if score >= self.min_bm25_score
            ]
            chunk_score_pairs.sort(key=lambda x: x[1], reverse=True)
            bm25_results = [pair[0] for pair in chunk_score_pairs[:20]]
        else:
            bm25_results = []

        # Her iki arama da boş döndüyse → ilgili doküman yok
        if not vector_results and not bm25_results:
            logger.info(
                "Hybrid search: Her iki arama da boş döndü. "
                "Halüsinasyon guardrail devreye girecek. Sorgu: '%s'",
                query[:80]
            )
            return []

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
        ranked_chunks = sorted(
            rrf_scores.values(), key=lambda x: x['score'], reverse=True
        )

        # Sadece top_k kadarını döndür
        results = [item['chunk'] for item in ranked_chunks[:top_k]]

        logger.debug(
            "Hybrid search: %d sonuç döndürüldü (dense=%d, bm25=%d). Sorgu: '%s'",
            len(results), len(vector_results), len(bm25_results), query[:80]
        )

        return results

