import json
import logging
from django.conf import settings
from langchain_ollama import ChatOllama

logger = logging.getLogger(__name__)

class IntentClassifier:
    def __init__(self):
        base_url = getattr(settings, "OLLAMA_BASE_URL", "http://localhost:11434")
        model_name = getattr(settings, "OLLAMA_MODEL", "qwen2.5")
        
        # Format="json" ile doğrudan json üretmeye zorluyoruz
        self.llm = ChatOllama(
            base_url=base_url,
            model=model_name,
            temperature=0.0,
            format="json"
        )
        
        self.system_prompt = """You are an intent classification system for a mechanical engineering database.
Classify the user's question into ONE of the following intents and extract the corresponding parameter.

INTENTS:
1. "get_part_dimensions" -> For questions about part dimensions, angles, stroke, etc. (Parameter: "part_code", e.g. "ISEDA013")
2. "get_material_info" -> For questions about material type, license, or details. (Parameter: "material_id")
3. "get_standard_groups" -> For questions about module standard groups or types. (Parameter: "type_name", optional)
4. "get_bom_list" -> For questions about Bill of Materials (BOM) or part names in different languages. (Parameter: "part_name")
5. "get_color_code" -> For questions about colors, color codes, or color groups. (Parameter: "color_name")
6. "get_parameter_status" -> For questions about parameter status, doluluk, or system parameters. (Parameter: "param_name")
7. "unknown" -> If the question does NOT match any of the above intents and requires a general database search.

Output MUST be a valid JSON object:
{
  "intent": "intent_name",
  "parameter": "extracted_value"
}
If no parameter is found, set "parameter": "".
"""

    def classify(self, user_question: str) -> dict:
        try:
            uq = user_question.strip().lower()
            import re
            
            # FAST PATH: Şablon sorular için LLM'i beklemeden anında yanıt dön
            if "boyutları" in uq or "ölçüleri" in uq or "boyut" in uq:
                match = re.search(r"(iseda\w+|[a-z0-9]+)", uq)
                if match:
                    return {"intent": "get_part_dimensions", "parameter": match.group(1)}
            
            if "malzeme detaylarını" in uq or "malzeme" in uq:
                match = re.search(r"([a-z0-9]+)\s*malzeme", uq)
                if match:
                    return {"intent": "get_material_info", "parameter": match.group(1)}
                match_code = re.search(r"\b(st\d+|ggg\d+\w*|gh\d+)\b", uq)
                if match_code:
                    return {"intent": "get_material_info", "parameter": match_code.group(1)}
                    
            if "standart grupları" in uq or "standart" in uq:
                return {"intent": "get_standard_groups", "parameter": ""}
                
            if "bom" in uq:
                match = re.search(r"(.+?)\s*bom", uq)
                param = match.group(1).strip() if match else uq.replace("bom", "").strip()
                return {"intent": "get_bom_list", "parameter": param}
                    
            if "lisans kodu" in uq or "renk" in uq:
                match = re.search(r"(.+?)\s*(?:renk|lisans)", uq)
                param = match.group(1).strip() if match else ""
                return {"intent": "get_color_code", "parameter": param}
                    
            if "parametre" in uq or "doluluk" in uq:
                match = re.search(r"(.+?)\s*parametre", uq)
                param = match.group(1).strip() if match else ""
                return {"intent": "get_parameter_status", "parameter": param}

            # Eğer fast-path eşleşmezse LLM'e git
            prompt = self.system_prompt + f"\nUser Question: {user_question}\nJSON:"
            response = self.llm.invoke(prompt)
            output = response.content.strip()
            
            # Clean possible markdown
            output = output.replace("```json", "").replace("```", "").strip()
            result = json.loads(output)
            
            # Güvenlik kontrolü
            if "intent" not in result:
                return {"intent": "unknown", "parameter": ""}
                
            return result
        except Exception as e:
            logger.error(f"Intent classification error: {e}")
            return {"intent": "unknown", "parameter": ""}
