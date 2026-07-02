import json
import logging
from typing import List, Dict, Tuple
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import cosine_similarity
from apps.chat.models import Conversation, Message
from apps.documents.models import GlobalDocument
from apps.engine.llama_engine import LlamaEngine
from apps.rag.retriever import HybridRetriever
from apps.rag.rewriter import QueryRewriter

logger = logging.getLogger(__name__)

class MemoryManager:
    """
    Sohbet hafızasını yöneten sınıf.
    - Kısa vadeli hafıza (son X mesaj)
    - Uzun vadeli hafıza (vektör tabanlı benzerlik araması)
    - RAG (Hybrid Search + Query Rewriter ile doküman arama)
    - Özetleme (eski mesajların özeti)
    """

    def __init__(self, 
                 short_term_window_size: int = 10,
                 similarity_threshold: float = 0.1,
                 max_context_messages: int = 5):
        self.short_term_window_size = short_term_window_size
        self.similarity_threshold = similarity_threshold
        self.max_context_messages = max_context_messages
        # Sadece özetleme için LlamaEngine instance
        self.summarizer_engine = LlamaEngine() 

        # RAG Modülleri
        self.retriever = HybridRetriever()
        self.rewriter = QueryRewriter()

    def build_context(self, conversation: Conversation, current_user_message: str) -> List[Dict]:
        """
        Model için optimize edilmiş bağlamı oluşturur.
        """
        all_messages = conversation.messages.all().order_by("created_at")
        
        # 1. Kısa vadeli hafıza (Son X mesaj)
        short_term_qs = all_messages.order_by("-created_at")[:self.short_term_window_size]
        short_term_messages = list(reversed(short_term_qs))
        
        # 2. Uzun vadeli hafıza (Kısa vadeli hafıza dışındaki eski mesajlar)
        short_term_ids = [m.id for m in short_term_messages]
        long_term_messages = all_messages.exclude(id__in=short_term_ids)
        
        # Özet güncelleme kontrolü
        if long_term_messages.count() > 10 and not conversation.summary:
            self._generate_summary(conversation, list(long_term_messages))

        # Benzer mesajları bul
        relevant_past_messages = self._retrieve_similar_messages(
            current_user_message, list(long_term_messages)
        )

        context = []

        # ==========================================
        # YENİ RAG MODÜLÜ (pgvector + BM25)
        # ==========================================
        
        # Geçmiş mesajları dictionary formatında hazırlayalım (Rewriter için)
        history_for_rewriter = [{"role": m.role, "content": m.content} for m in short_term_messages]
        
        # Sorguyu Yeniden Yaz (Query Rewrite)
        rewritten_query = self.rewriter.rewrite_query(current_user_message, history_for_rewriter)
        
        # pgvector + BM25 üzerinden ara
        top_chunks = self.retriever.search(rewritten_query, conversation=conversation, top_k=5)
        
        if top_chunks:
            docs_text = "Aşağıdaki doküman parçaları kullanıcının sorusuyla ilgilidir. Bu bilgileri kullanarak yanıt ver:\n"
            for chunk in top_chunks:
                source_name = chunk.document.filename if chunk.document else (chunk.global_document.filename if chunk.global_document else "Bilinmeyen Kaynak")
                docs_text += f"\n--- Kaynak: {source_name} ---\n{chunk.text}\n"
                
            context.append({
                "role": "system",
                "content": docs_text
            })

        # ==========================================
        
        # Summary ekle
        if conversation.summary:
            context.append({
                "role": "system",
                "content": f"Önceki konuşmaların özeti: {conversation.summary}"
            })

        # Relevant past messages ekle (Message RAG)
        if relevant_past_messages:
            rag_context = "Geçmiş konuşmalardan ilgili bağlam:\n"
            for msg in relevant_past_messages:
                rag_context += f"- {msg.role}: {msg.content}\n"
            context.append({
                "role": "system",
                "content": rag_context
            })

        # Short term messages ekle
        for msg in short_term_messages:
            context.append({
                "role": msg.role,
                "content": msg.content
            })

        return context

    def _retrieve_similar_messages(self, query: str, messages: List[Message]) -> List[Message]:
        if not messages:
            return []
        documents = [msg.content for msg in messages]
        try:
            vectorizer = TfidfVectorizer()
            tfidf_matrix = vectorizer.fit_transform(documents)
            query_vector = vectorizer.transform([query])
            similarities = cosine_similarity(query_vector, tfidf_matrix).flatten()
            relevant_indices = [
                i for i, score in enumerate(similarities) 
                if score > self.similarity_threshold
            ]
            relevant_indices.sort(key=lambda i: similarities[i], reverse=True)
            top_indices = relevant_indices[:self.max_context_messages]
            top_indices.sort()
            return [messages[i] for i in top_indices]
        except Exception as e:
            logger.error(f"Benzerlik araması hatası: {str(e)}")
            return []

    def _generate_summary(self, conversation: Conversation, messages: List[Message]) -> None:
        try:
            text_to_summarize = "\n".join([f"{m.role}: {m.content}" for m in messages[:20]])
            prompt = (
                "Aşağıdaki konuşmayı kısaca özetle. Sadece özeti ver, başka bir şey yazma.\n\n"
                f"{text_to_summarize}"
            )
            summary = self.summarizer_engine.get_response(prompt, [])
            conversation.summary = summary
            conversation.save(update_fields=['summary'])
            logger.info(f"Sohbet {conversation.id} için özet oluşturuldu.")
        except Exception as e:
            logger.error(f"Özet oluşturma hatası: {str(e)}")
