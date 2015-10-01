@echo off

cls
color 0C
title csgo_server Watchdog - By M4RSAL
mkdir Watchdog_logs

cls
echo Protecting csgo_server from crashes...
echo If you want to close csgo_server and this script
echo close the csgo_server window and type Y 
echo depending on your language followed by Enter.

:start
echo (%date%) - (%time%) csgo_server started.
echo (%date%) - (%time%) csgo_server started. >>Watchdog_logs/(%date%).txt 
start /wait srcds.exe

echo (%date%) - (%time%) WARNING: csgo_server crashed, restarting...
echo (%date%) - (%time%) WARNING: csgo_server crashed, restarting... >>Watchdog_logs/(%date%).txt 
goto start
