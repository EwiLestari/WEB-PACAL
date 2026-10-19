@echo off
title Menjalankan Website Bertaut Untuk Cowokku ♡
color 0D
echo ========================================================
echo   MENJALANKAN WEBSITE: BERTAUT UNTUK COWOKKU ♡
echo ========================================================
echo.

:: 1. Jalankan Local Server Python di Port 8080
echo [*] Memulai Local Server di port 8080...
start /b "" python -m http.server 8080 >nul 2>&1

:: Tunggu 2 detik agar server siap
timeout /t 2 /nobreak >nul

:: 2. Buka Browser di Laptop/PC
echo [*] Membuka website di browser kamu...
start http://localhost:8080

:: 3. Jalankan Cloudflare Tunnel agar bisa diakses dari HP Pacar
echo.
echo [*] Menghubungkan Cloudflare Tunnel agar pacarmu bisa buka di HP...
echo.
echo --------------------------------------------------------
echo TIPS:
echo - URL localhost di laptop kamu: http://localhost:8080
echo - URL publik untuk HP pacar akan muncul di bawah ini.
echo - Jangan tutup jendela CMD ini selama pacarmu membuka website!
echo --------------------------------------------------------
echo.

.\cloudflared.exe tunnel --url http://localhost:8080
pause
