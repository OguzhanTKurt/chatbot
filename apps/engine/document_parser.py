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
            # 1. Standart metin çıkarma (PyPDF2)
            pdf_text = ""
            try:
                with open(file_path, 'rb') as f:
                    reader = PyPDF2.PdfReader(f)
                    for page in reader.pages:
                        page_text = page.extract_text()
                        if page_text:
                            pdf_text += page_text + "\n"
            except Exception as pdf_err:
                logger.warning(f"PyPDF2 metin çıkarma uyarısı ({filename}): {pdf_err}")

            # 2. Resim ve Taranmış Sayfa OCR (Tesseract + pdf2image)
            ocr_text = ""
            try:
                import pytesseract
                from pdf2image import convert_from_path

                images = convert_from_path(file_path)
                for i, img in enumerate(images):
                    try:
                        # Tesseract ile Türkçe ve İngilizce OCR okuması
                        txt = pytesseract.image_to_string(img, lang='tur+eng')
                        if txt and txt.strip():
                            # Eğer doğrudan çıkarılan metinde bu resim metni zaten varsa mükerrer eklemeyi engelle
                            cleaned_txt = txt.strip()
                            if len(cleaned_txt) > 20 and cleaned_txt not in pdf_text:
                                ocr_text += f"\n--- [Görsel/OCR Metni Sayfa {i+1}] ---\n" + cleaned_txt + "\n"
                    except Exception as ocr_page_err:
                        logger.error(f"Sayfa {i+1} OCR hatası: {ocr_page_err}")
            except Exception as ocr_err:
                logger.warning(f"Tesseract OCR çalıştırılamadı: {ocr_err}")

            # İki yöntemin sonuçlarını birleştir
            if pdf_text.strip() and ocr_text.strip():
                text = pdf_text + "\n" + ocr_text
            elif ocr_text.strip():
                text = ocr_text
            else:
                text = pdf_text
                        
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
