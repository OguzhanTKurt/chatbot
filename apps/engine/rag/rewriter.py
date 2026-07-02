class QueryRewriter:
    """
    Kullanıcının sorgusunu sohbet geçmişine göre zenginleştirir.
    RAG aramalarının doğruluğunu artırmak için kullanılır.
    """
    def __init__(self):
        pass

    def rewrite_query(self, query: str, history: list) -> str:
        # Hız ve performans (LLM'e ek istek atmamak) için şimdilik orijinal sorguyu dönüyoruz.
        # İleride burada LLM çağrısı yapılarak query zenginleştirilebilir.
        return query
