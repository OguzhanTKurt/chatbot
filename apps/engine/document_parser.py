import os
import logging
import PyPDF2
import pandas as pd
from docx import Document

logger = logging.getLogger(__name__)

def parse_document(file_path: str, filename: str) -> str:
    """
    Verilen dosya yolundaki belgenin uzantısına göre içeriğini metin olarak okur.
    Desteklenen formatlar: .txt, .csv, .pdf, .xlsx, .docx
    """
    ext = os.path.splitext(filename)[1].lower()
    
    try:
        text = ""
        if ext == '.txt':
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                text = f.read()
                
        elif ext == '.csv':
            df = pd.read_csv(file_path)
            text = df.to_string()
            
        elif ext == '.xlsx':
            df = pd.read_excel(file_path)
            text = df.to_string()
            
        elif ext == '.pdf':
            with open(file_path, 'rb') as f:
                reader = PyPDF2.PdfReader(f)
                for page in reader.pages:
                    page_text = page.extract_text()
                    if page_text:
                        text += page_text + "\n"
                        
        elif ext == '.docx':
            doc = Document(file_path)
            text = "\n".join([para.text for para in doc.paragraphs])
            
        else:
            logger.warning(f"Desteklenmeyen dosya formatı: {ext}")
            return ""
            
        # PostgreSql ve diğer veritabanları NUL (0x00) karakterlerini desteklemez.
        # Özellikle PDF'lerden çıkan metinlerde bu sıkça olur, temizliyoruz.
        return text.replace('\x00', '')
            
    except Exception as e:
        logger.error(f"Doküman okunurken hata ({filename}): {e}")
        return ""
