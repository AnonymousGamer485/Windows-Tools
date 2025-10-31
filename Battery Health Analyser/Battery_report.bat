@echo off
echo Generating battery report...
powercfg /batteryreport
timeout /t 3 >nul
echo Opening battery report...
start battery_health_analyser.html
exit
