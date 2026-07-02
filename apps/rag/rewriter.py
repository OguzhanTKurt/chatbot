class QueryRewriter:
    """
    Kullanıcının sorgusunu sohbet geçmişine göre zenginleştirir.
    (MVP için doğrudan orijinal sorguyu döndürür)
    """
    def __init__(self):
        pass

    def rewrite_query(self, query: str, history) -> str:
        # İleride LLM çağrısı ile "Bunu nasıl yaparım?" -> "Python Django ile RAG nasıl yaparım?" şeklinde zenginleştirilebilir.
        return query
