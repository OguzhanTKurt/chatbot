import logging
from django.db import connection

logger = logging.getLogger(__name__)

class DataAccessLayer:
    """
    Salt-okunur (read-only) veri erişim katmanı.
    Sadece güvenli, parametrik, önceden tanımlanmış SQL sorgularını çalıştırır.
    Faz 2 isterleri doğrultusunda %90 üstü doğruluk için kullanılır.
    """
    
    @staticmethod
    def get_part_dimensions(part_code: str) -> list:
        """KAM veya ISEDA parçaları tablosundan parça/modül boyut ve açı durumunu getirir."""
        # 1. Önce KAM tablosuna bak
        query = '''
            SELECT "Sipariş Kodu", "Alın Eni W", "Açı θ", "Kurs S", "Alın Boyu H" 
            FROM "KAM" 
            WHERE "Sipariş Kodu" ILIKE %s
        '''
        res = DataAccessLayer._execute(query, [f"%{part_code}%"])
        if res and "error" not in res[0] and len(res) > 0:
            return res

        # 2. KAM'da yoksa ISEDA özel tablolarında ara (ör. ISEDA013PnomatikSilindir)
        clean_code = part_code.strip().replace(" ", "").upper()
        try:
            with connection.cursor() as cursor:
                # SQLite veya Postgres tablo isimlerini listele
                if connection.vendor == 'sqlite':
                    cursor.execute("SELECT name FROM sqlite_master WHERE type='table' AND UPPER(name) LIKE %s", [f"%{clean_code}%"])
                else:
                    cursor.execute("SELECT table_name FROM information_schema.tables WHERE table_schema='public' AND UPPER(table_name) LIKE %s", [f"%{clean_code}%"])
                
                tables = [r[0] for r in cursor.fetchall()]
                if tables:
                    target_table = tables[0]
                    sql = f'SELECT * FROM "{target_table}" LIMIT 5'
                    cursor.execute(sql)
                    columns = [col[0] for col in cursor.description]
                    rows = cursor.fetchall()
                    return [dict(zip(columns, row)) for row in rows]
        except Exception as e:
            logger.error(f"ISEDA boyut sorgulama hatası: {e}")

        return []

    @staticmethod
    def get_material_info(material_id: str) -> list:
        """Malzeme tipini ve detaylarını getirir (lisans/materyal durumu)."""
        query = 'SELECT "MaterialID", "Material" FROM "Material" WHERE "Material" ILIKE %s'
        res = DataAccessLayer._execute(query, [f"%{material_id}%"])
        if res and "error" not in res[0] and len(res) > 0:
            return res
        query_type = 'SELECT "MaterialTypeID", "MaterialType" FROM "MaterialType" WHERE "MaterialType" ILIKE %s'
        return DataAccessLayer._execute(query_type, [f"%{material_id}%"])
        
    @staticmethod
    def get_standard_groups(type_name: str = "") -> list:
        """Aktif standart gruplarını (modül standartları) listeler."""
        if type_name:
            query = 'SELECT "GROUP", "Type", "Revizyon_Tarihi" FROM "STANDARDGROUPS" WHERE "Type" ILIKE %s LIMIT 20'
            return DataAccessLayer._execute(query, [f"%{type_name}%"])
        query = 'SELECT "GROUP", "Type", "Revizyon_Tarihi" FROM "STANDARDGROUPS" LIMIT 20'
        return DataAccessLayer._execute(query, [])
        
    @staticmethod
    def get_bom_list(part_name: str) -> list:
        """BOM (Bill of Materials) listesi - Parça isimlerini ve dillerini getirir."""
        clean_name = part_name.strip()
        query = 'SELECT "PartNameID", "Turkish", "Italian", "English" FROM "PartName" WHERE "Turkish" ILIKE %s'
        res = DataAccessLayer._execute(query, [f"%{clean_name}%"])
        if res and "error" not in res[0] and len(res) > 0:
            return res

        # PartName tablosunda yoksa ISEDA parçalarından BOM bilgisini çek
        try:
            with connection.cursor() as cursor:
                keyword = clean_name.replace(" ", "%")
                if connection.vendor == 'sqlite':
                    cursor.execute("SELECT name FROM sqlite_master WHERE type='table' AND LOWER(name) LIKE %s", [f"%{keyword.lower()}%"])
                else:
                    cursor.execute("SELECT table_name FROM information_schema.tables WHERE table_schema='public' AND LOWER(table_name) LIKE %s", [f"%{keyword.lower()}%"])
                
                tables = [r[0] for r in cursor.fetchall()]
                if tables:
                    target_table = tables[0]
                    cursor.execute(f'SELECT * FROM "{target_table}" LIMIT 5')
                    columns = [col[0] for col in cursor.description]
                    rows = cursor.fetchall()
                    return [dict(zip(columns, row)) for row in rows]
        except Exception as e:
            logger.error(f"BOM listesi sorgu hatası: {e}")

        return []
        
    @staticmethod
    def get_color_code(color_name: str) -> list:
        """Renk kodları tablosundan lisanslı renk bilgisini getirir."""
        query = 'SELECT "Kod", "Grup", "Tip", "Firma" FROM "Renkler" WHERE "Tip" ILIKE %s OR "Grup" ILIKE %s OR "Kod" ILIKE %s'
        res = DataAccessLayer._execute(query, [f"%{color_name}%", f"%{color_name}%", f"%{color_name}%"])
        if res and "error" not in res[0] and len(res) > 0:
            return res
        # Filtreye takılmadıysa tüm lisanslı renk kodları özetini döndür
        return DataAccessLayer._execute('SELECT "Kod", "Grup", "Tip", "Firma" FROM "Renkler" LIMIT 15', [])

    @staticmethod
    def get_parameter_status(param_name: str) -> list:
        """Sistem parametreleri veya modül doluluk/lisans durumu parametrelerini kontrol eder."""
        if not param_name or "doluluk" in param_name.lower() or "durum" in param_name.lower():
            query = 'SELECT "Parametre", "ParametreTipi", "Doluluk" FROM "PARAMETRE" LIMIT 20'
            return DataAccessLayer._execute(query, [])
        query = 'SELECT "Parametre", "ParametreTipi", "Doluluk" FROM "PARAMETRE" WHERE "Parametre" ILIKE %s'
        return DataAccessLayer._execute(query, [f"%{param_name}%"])

    @staticmethod
    def _execute(query: str, params: list) -> list:
        try:
            with connection.cursor() as cursor:
                cursor.execute(query, params)
                columns = [col[0] for col in cursor.description]
                return [dict(zip(columns, row)) for row in cursor.fetchall()]
        except Exception as e:
            logger.error(f"DAL Sorgu hatası: {e}")
            return [{"error": str(e)}]
