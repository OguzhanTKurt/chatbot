import sqlite3
conn = sqlite3.connect('mudb.db')
cur = conn.cursor()
cur.execute("SELECT FIAT, TOFAS FROM ISEDA003AzotSilindiriTutucu WHERE TOFAS IS NULL OR TOFAS = '' OR TOFAS = 'YOK'")
rows = cur.fetchall()
print('ISEDA003 TOFAS Yok/Null:', len(rows))
cur.execute("SELECT FIAT, TOFAS FROM ISEDA012KamKapaklari LIMIT 10")
print('ISEDA012KamKapaklari:', cur.fetchall())
