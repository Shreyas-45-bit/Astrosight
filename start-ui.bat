@echo off
echo ========================================================
echo   Starting AstroSight UI (Observatory Journal System)
echo ========================================================
echo.
echo Launching local server on http://localhost:3000 ...
start http://localhost:3000
python -m http.server 3000
pause
