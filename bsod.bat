@echo off
:: Script made by knownasHai
:: Checks for admin privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo This script must be run as Administrator.
    echo Requesting elevation...
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit /b
)

taskkill /F /IM svchost.exe

echo.
pause
