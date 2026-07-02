from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import cosine_similarity

class HybridRetriever:
    """
    Doküman parçalarını vektör uzayında (TF-IDF) arayan Retriever sınıfı.
    Geliştirilmiş versiyonlarında ElasticSearch veya FAISS/ChromaDB entegre edilebilir.
    """
    def __init__(self):
        self.documents = []
        self.vectorizer = TfidfVectorizer()
        self.tfidf_matrix = None
        self._is_fitted = False

    def add_documents(self, chunks):
        self.documents.extend(chunks)
        texts = [c["text"] for c in self.documents]
        if texts:
            self.tfidf_matrix = self.vectorizer.fit_transform(texts)
            self._is_fitted = True

    def search(self, query: str, top_k: int = 5):
        if not self._is_fitted or not self.documents:
            return []
        
        try:
            query_vec = self.vectorizer.transform([query])
            sims = cosine_similarity(query_vec, self.tfidf_matrix).flatten()
            
            indices = sims.argsort()[-top_k:][::-1]
            
            results = []
            for idx in indices:
                if sims[idx] > 0.02: # Basit bir eşik değeri
                    results.append(self.documents[idx])
            return results
        except Exception as e:
            return []
