@echo off
chcp 65001 >nul
echo ===================================================
echo     AKTAP CHATBOT (DOCKER MODU) BAŞLATILIYOR
echo ===================================================
echo.
echo Docker servisleri derleniyor ve başlatılıyor...
echo (İlk çalıştırmada bağımlılıkların indirilmesi birkaç dakika sürebilir)
echo.

docker compose up -d --build

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [HATA] Docker başlatılamadı! 
    echo Lütfen Docker Desktop uygulamasının bilgisayarınızda açık olduğundan emin olun.
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo Servisler başarıyla ayağa kalktı!
echo Tarayıcınızda React Arayüzü (http://localhost:5173) açılıyor...
echo.

timeout /t 4 >nul
start http://localhost:5173

echo ===================================================
echo  - React Frontend: http://localhost:5173
echo  - Django Backend:  http://localhost:8000
echo.
echo Servisleri durdurmak için: docker compose down
echo ===================================================
pause
