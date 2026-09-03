import os
from django.conf import settings
from langchain_community.utilities import SQLDatabase
from langchain_ollama import ChatOllama
from langchain_community.agent_toolkits import create_sql_agent

from .dal import DataAccessLayer
from .intent_classifier import IntentClassifier

import logging

logger = logging.getLogger(__name__)

class TofasSQLAgent:
    def __init__(self):
        # Database URL
        db_settings = settings.DATABASES['default']
        if db_settings['ENGINE'] == 'django.db.backends.sqlite3':
            self.db_url = f"sqlite:///{db_settings['NAME']}"
        else:
            user = db_settings.get('USER', 'chatbot_user')
            password = db_settings.get('PASSWORD', 'chatbot_password')
            host = db_settings.get('HOST', 'localhost')
            port = db_settings.get('PORT', '5432')
            name = db_settings.get('NAME', 'chatbot_db')
            self.db_url = f"postgresql://{user}:{password}@{host}:{port}/{name}"
            
        self.db = SQLDatabase.from_uri(self.db_url)
        
        # Ollama LLM
        base_url = getattr(settings, "OLLAMA_BASE_URL", "http://localhost:11434")
        model_name = getattr(settings, "OLLAMA_MODEL", "qwen2.5")
        temperature = float(getattr(settings, "OLLAMA_TEMPERATURE", 0.05))
        
        self.llm = ChatOllama(
            base_url=base_url,
            model=model_name,
            temperature=temperature
        )

        self.intent_classifier = IntentClassifier()

    def _get_relevant_tables(self, question: str) -> list:
        import re
        all_tables = self.db.get_usable_table_names()
        # Gerçek tablo isimlerini küçük harfe çevirerek bir map oluştur
        # { 'iseda076havatanki': 'ISEDA076HavaTanki', ... }
        table_lower_map = {t.lower(): t for t in all_tables}
        
        question_lower = question.lower()
        words = [w for w in re.findall(r'\w+', question_lower) if len(w) > 2]
        
        core_tables = {"Material", "MaterialType", "PartName", "PARAMETRE", "STANDARDGROUPS"}
        scored_tables = []
        
        for table in all_tables:
            if table in core_tables:
                scored_tables.append((100, table))
                continue
                
            table_lower = table.lower()
            score = sum(1 for w in words if w in table_lower)
            if score > 0:
                scored_tables.append((score, table))
                
        scored_tables.sort(key=lambda x: x[0], reverse=True)
        # Sadece en ilgili 10 tabloyu al (Context limitini şişirmemek için)
        return [t[1] for t in scored_tables[:10]]

    def query(self, user_question: str) -> str:
        try:
            # 1. Hızlı Filtreleme: Günlük konuşmaları engelle
            greetings = ["sa", "selam", "merhaba", "hello", "nasılsın", "naber", "iyi günler"]
            if user_question.strip().lower() in greetings:
                return "I don't know"

            # 2. INTENT CLASSIFICATION (Fast Path / Güvenli Okuma Katmanı)
            intent_data = self.intent_classifier.classify(user_question)
            intent = intent_data.get("intent", "unknown")
            param = intent_data.get("parameter", "")
            
            if intent != "unknown":
                logger.info(f"Intent Matched: {intent} with param: {param}")
                # DataAccessLayer metodunu çağır
                if intent == "get_part_dimensions":
                    result = DataAccessLayer.get_part_dimensions(param)
                elif intent == "get_material_info":
                    result = DataAccessLayer.get_material_info(param)
                elif intent == "get_standard_groups":
                    result = DataAccessLayer.get_standard_groups(param)
                elif intent == "get_bom_list":
                    result = DataAccessLayer.get_bom_list(param)
                elif intent == "get_color_code":
                    result = DataAccessLayer.get_color_code(param)
                elif intent == "get_parameter_status":
                    result = DataAccessLayer.get_parameter_status(param)
                if isinstance(result, list):
                    # Eğer DAL hata döndürdüyse (içinde error key varsa) fallback'e düşsün
                    if len(result) > 0 and "error" in result[0]:
                        pass
                    else:
                        import json
                        # Sonuç boş olsa bile ( [] ), intent eşleştiği için geri dön
                        return json.dumps(result, ensure_ascii=False)
                    
            # 3. FALLBACK: Şablon Dışı Sorular İçin Dinamik SQL
            logger.info("Intent not matched. Falling back to dynamic 1-shot SQL generation.")
            relevant_tables = self._get_relevant_tables(user_question)
            if not relevant_tables:
                return "I don't know"
                
            schema_info = self.db.get_table_info(table_names=relevant_tables)
            
            # 3. Tek Seferlik (Single-Shot) Prompt
            # Sadece şemada bulunan GERÇEK tablo isimlerini listele
            real_table_names = ", ".join(relevant_tables)
            prompt = f"""Sen bir PostgreSQL uzmanısın. SADECE ve YALNIZCA aşağıdaki tablo şemaları kullanılarak cevaplanabilecek sorular için SQL yaz.

Tablo Şemaları:
{schema_info}

Kullanıcı sorusu: {user_question}

KRİTİK KURALLAR:
1. YALNIZCA şu tablo isimlerini kullan: {real_table_names}
2. Var OLMAYAN, yukarıda LİSTELENMEMİŞ hiçbir tablo adı YAZMA.
3. Sadece ham SQL sorgusunu döndür. ```sql veya ``` gibi markdown EKLEME.
4. Sorgunun önüne veya arkasına HİÇBİR metin, açıklama veya yabancı dilde (Çince, İngilizce vb.) karakter YAZMA.
5. Eğer bu tablolarla soru cevaplanamıyorsa SADECE şunu yaz: I don't know"""

            response = self.llm.invoke(prompt)
            output = response.content.strip()
            
            if "I don't know" in output or "bilmiyorum" in output.lower():
                return "I don't know"
                
            # Markdown temizliği (Eğer model kuralı ihlal edip markdown koyarsa)
            sql_query = output.replace("```sql", "").replace("```", "").strip()
            
            # 4. Sorguyu çalıştır
            logger.info(f"Oluşturulan SQL: {sql_query}")
            try:
                result = self.db.run(sql_query)
                return str(result)
            except Exception as db_err:
                logger.error(f"SQL Çalıştırma hatası: {db_err}")
                return "I don't know"
                
        except Exception as e:
            logger.error(f"SQL Agent sorgu hatası: {e}")
            return ""
