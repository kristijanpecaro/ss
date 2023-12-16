@echo off
set /a rand1=(%random%*8998/32768)+1000 
set /a rand2=(%random%*8998/32768)+1000
PING localhost -n 1 >NUL

start "" /b /wait "%~dp0volumeid64.exe" C: %rand1%-%rand2% /accepteula >nul
start "" /b /wait "%~dp0volumeid64.exe" D: %rand1%-%rand2% /accepteula >nul
start "" /b /wait "%~dp0volumeid64.exe" E: %rand1%-%rand2% /accepteula >nul
start "" /b /wait "%~dp0volumeid64.exe" F: %rand1%-%rand2% /accepteula >nul
PING localhost -n 10 >NUL 