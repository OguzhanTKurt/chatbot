@echo off
chcp 65001 >nul
echo ===================================================
echo     AKTAP CHATBOT BAŞLATILIYOR
echo ===================================================
echo.
echo Django Sunucusu başlatılıyor...
echo Tarayıcınızda http://localhost:8000 otomatik açılacaktır.
echo.

start "AKTAP Sunucu" cmd /k "title AKTAP Sunucu && python manage.py runserver"

timeout /t 3 >nul
start http://localhost:8000

pause
