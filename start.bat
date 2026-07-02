@echo off
echo ===================================================
echo     AKTAP CHATBOT (TEK SUNUCU MODU) BASLATILIYOR
echo ===================================================
echo.
echo Sadece Django (Backend) calistirilacak.
echo O yuzden sadece TEK bir siyah pencere acilacak.
echo.
echo Tarayicinizda otomatik olarak localhost:8000 acilacaktir...

:: Backend'i baslat
start "AKTAP Sunucu" cmd /k "title AKTAP Tek Sunucu && python manage.py runserver"

:: Tarayiciyi otomatik ac (kucuk bir bekleme suresi veriyoruz sunucu ayaga kalksin diye)
timeout /t 3 >nul
start http://localhost:8000

echo.
echo ===================================================
echo Acilan siyah pencereyi (AKTAP Tek Sunucu) kapatana
echo kadar sistem calismaya devam eder. Gule gule kullan!
echo ===================================================
pause
