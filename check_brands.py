import sqlite3
conn = sqlite3.connect('mudb.db')
cur = conn.cursor()
cur.execute("SELECT name FROM sqlite_master WHERE type='table';")
tables = [row[0] for row in cur.fetchall() if not row[0].startswith('sqlite_')]
results = {}
for t in tables:
    cur.execute(f"PRAGMA table_info(\"{t}\");")
    cols = [col[1] for col in cur.fetchall()]
    fiat_cols = [c for c in cols if 'FIAT' in c.upper() or 'TOFAS' in c.upper()]
    if fiat_cols:
        results[t] = fiat_cols

for t, cols in results.items():
    print(f'{t}: {cols}')
