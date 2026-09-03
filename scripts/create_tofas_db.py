import sqlite3
import psycopg2
from psycopg2.extras import execute_values
import os

SQLITE_DB = "mudb.db"
PG_DSN = os.getenv("DATABASE_URL", "postgresql://chatbot_user:chatbot_password@localhost:5434/tofas_db")
if PG_DSN.startswith("postgres://"):
    PG_DSN = PG_DSN.replace("postgres://", "postgresql://", 1)

def is_empty_val(val):
    if val is None:
        return True
    s = str(val).strip().upper()
    if s == '' or s == 'YOK' or s == 'NULL' or s == 'YOK.':
        return True
    return False

def run_migration():
    print("Connecting databases...")
    sl_conn = sqlite3.connect(SQLITE_DB)
    sl_cur = sl_conn.cursor()
    
    pg_conn = psycopg2.connect(PG_DSN)
    pg_conn.autocommit = False
    pg_cur = pg_conn.cursor()
    
    try:
        sl_cur.execute("SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%';")
        tables = [row[0] for row in sl_cur.fetchall()]
        
        for table_name in tables:
            sl_cur.execute(f'PRAGMA table_info("{table_name}");')
            columns_info = sl_cur.fetchall()
            if not columns_info: continue
            
            # 1. Filtrele: FIAT içeren kolonları atla
            valid_cols_info = []
            col_names_for_pg = []
            fiat_idx = -1
            tofas_idx = -1
            
            for idx, col in enumerate(columns_info):
                cname = col[1]
                upper_cname = cname.upper()
                
                # Orijinal indexleri bul (Satır filtrelemesi için FIAT kelimesi geçen değil, direkt ana markayı temsil edeni alalım)
                if upper_cname == 'FIAT':
                    fiat_idx = idx
                if upper_cname == 'TOFAS':
                    tofas_idx = idx
                    
                # Kolon isminde FIAT geçiyorsa kopyalama
                if 'FIAT' in upper_cname:
                    continue
                    
                valid_cols_info.append((idx, cname))
                col_names_for_pg.append(cname)
                
            if not col_names_for_pg:
                print(f"Skipping {table_name} entirely (no valid columns).")
                continue
                
            # Create Table in PostgreSQL
            col_defs = [f'"{c}" TEXT' for c in col_names_for_pg]
            create_query = f'CREATE TABLE IF NOT EXISTS "{table_name}" ({", ".join(col_defs)});'
            pg_cur.execute(create_query)
            
            # Fetch all rows from SQLite
            sl_cur.execute(f'SELECT * FROM "{table_name}"')
            all_rows = sl_cur.fetchall()
            
            rows_to_insert = []
            for row in all_rows:
                keep = True
                
                # Satır filtrelemesi
                if fiat_idx != -1 and tofas_idx != -1:
                    val_fiat = row[fiat_idx]
                    val_tofas = row[tofas_idx]
                    
                    is_fiat_empty = is_empty_val(val_fiat)
                    is_tofas_empty = is_empty_val(val_tofas)
                    
                    if not is_tofas_empty:
                        keep = True # Durum A: Tofas dolu
                    elif is_tofas_empty and is_fiat_empty:
                        keep = True # Durum B: İkisi de boş (Standart parça)
                    elif is_tofas_empty and not is_fiat_empty:
                        keep = False # Durum C: Sadece FIAT dolu (FIAT'a özel)
                
                if keep:
                    # Sadece geçerli kolonların değerlerini al
                    safe_row = tuple(str(row[idx]) if row[idx] is not None else None for idx, _ in valid_cols_info)
                    rows_to_insert.append(safe_row)
                    
            if not rows_to_insert:
                print(f"[{table_name}] yaratıldı ama aktarılacak TOFAS satırı yok.")
                continue
                
            # Insert into PostgreSQL
            cols_str = '", "'.join(col_names_for_pg)
            insert_query = f'INSERT INTO "{table_name}" ("{cols_str}") VALUES %s'
            execute_values(pg_cur, insert_query, rows_to_insert)
            
            print(f"[{table_name}] -> {len(rows_to_insert)} / {len(all_rows)} satır aktarıldı.")
            
        pg_conn.commit()
        print("TÜM TOFAŞ VERİLERİ BAŞARIYLA AYRIŞTIRILDI!")
        
    except Exception as e:
        pg_conn.rollback()
        print(f"HATA: {e}")
    finally:
        sl_cur.close()
        sl_conn.close()
        pg_cur.close()
        pg_conn.close()

if __name__ == '__main__':
    run_migration()
