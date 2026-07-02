class DocumentChunker:
    """
    Belgeleri belirli boyutlarda parçalara (chunk) ayırır.
    """
    def __init__(self, chunk_size=300, chunk_overlap=50):
        self.chunk_size = chunk_size
        self.chunk_overlap = chunk_overlap

    def chunk_text(self, text: str, source_id: str):
        words = text.split()
        chunks = []
        i = 0
        while i < len(words):
            chunk_words = words[i:i + self.chunk_size]
            chunk_text = " ".join(chunk_words)
            if chunk_text.strip():
                chunks.append({
                    "source": source_id,
                    "text": chunk_text
                })
            i += (self.chunk_size - self.chunk_overlap)
        return chunks
