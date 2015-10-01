@echo off

cls
color 0C
title csgo_server launcher - By M4RSAL
mkdir Watchdog_logs

:menu
cls
REM Different choices 
echo Select what you want to do
echo 1. Start csgo_server
echo 2. Update csgo_server

REM This is the menu setup 
set menu=
set /p menu=Make a Selection:

REM IF STATEMENTS
IF %menu%==1 goto start_server
IF %menu%==2 goto update_server
IF NOT %menu%=="" goto menu



:update_server
cls
echo updating your csgo server...
steamcmd +login anonymous +force_install_dir c:\users\marcus-pc\desktop\csgo_server\SERVER_1 +app_update 740 validate
echo DONE!
goto menu

:start_server
cls
REM Different choices 
echo Select what config you want to load
echo 1. Start aim_map (128 tick)
echo 2. Start aim_pistol (128 tick)
echo 2. Start esl5on5 - COMP (128 tick)
echo 2. Start Smoke server (64 tick)
echo 5. Start Smoke server (128 tick)

set server_cfg=
set /p server_cfg=Make a Selection:

REM IF STATEMENTS
IF %menu%==1 goto aim_map
IF %menu%==2 goto aim_pistol
IF %menu%==3 goto esl5on5
IF %menu%==4 goto smoke_64
IF %menu%==5 goto smoke_128
IF NOT %menu%=="" goto start_server


:aim_map
cls
echo Protecting csgo_server from crashes...
echo If you want to close csgo_server and this script
echo close the csgo_server window and type Y 
echo depending on your language followed by Enter.
goto start1

:start1
echo (%date%) - (%time%) csgo_server started.
echo (%date%) - (%time%) csgo_server started. >>Watchdog_logs/(%date%).txt 
start /wait srcds.exe srcds -game csgo -console -usercon +game_type 0 +game_mode 1 -maxplayers_override 10 +exec aim_map.cfg -port 27015 -tickrate 128 +mapgroup mg_active +map de_dust2 -authkey E827ED43FD1235C8E57C314711235261

echo (%date%) - (%time%) WARNING: csgo_server crashed, restarting...
echo (%date%) - (%time%) WARNING: csgo_server crashed, restarting... >>Watchdog_logs/(%date%).txt 
goto start1

:aim_pistol
cls
echo Protecting csgo_server from crashes...
echo If you want to close csgo_server and this script
echo close the csgo_server window and type Y 
echo depending on your language followed by Enter.
goto start1

:start2
echo (%date%) - (%time%) csgo_server started.
echo (%date%) - (%time%) csgo_server started. >>Watchdog_logs/(%date%).txt 
start /wait srcds.exe srcds -game csgo -console -usercon +game_type 0 +game_mode 1 -maxplayers_override 10 +exec aim_pistol.cfg -port 27015 -tickrate 128 +mapgroup mg_active +map de_dust2 -authkey E827ED43FD1235C8E57C314711235261

echo (%date%) - (%time%) WARNING: csgo_server crashed, restarting...
echo (%date%) - (%time%) WARNING: csgo_server crashed, restarting... >>Watchdog_logs/(%date%).txt 
goto start2

:esl5on5
cls
echo Protecting csgo_server from crashes...
echo If you want to close csgo_server and this script
echo close the csgo_server window and type Y 
echo depending on your language followed by Enter.
goto start3

:start3
echo (%date%) - (%time%) csgo_server started.
echo (%date%) - (%time%) csgo_server started. >>Watchdog_logs/(%date%).txt 
start /wait srcds.exe srcds -game csgo -console -usercon +game_type 0 +game_mode 1 -maxplayers_override 10 +exec esl5on5.cfg -port 27015 -tickrate 128 +mapgroup mg_active +map de_dust2 -authkey E827ED43FD1235C8E57C314711235261

echo (%date%) - (%time%) WARNING: csgo_server crashed, restarting...
echo (%date%) - (%time%) WARNING: csgo_server crashed, restarting... >>Watchdog_logs/(%date%).txt 
goto start3

:smoke_64
cls
echo Protecting csgo_server from crashes...
echo If you want to close csgo_server and this script
echo close the csgo_server window and type Y 
echo depending on your language followed by Enter.
goto start3

:start4
echo (%date%) - (%time%) csgo_server started.
echo (%date%) - (%time%) csgo_server started. >>Watchdog_logs/(%date%).txt 
start /wait srcds.exe srcds -game csgo -console -usercon +game_type 0 +game_mode 1 -maxplayers_override 10 +exec smoke.cfg -port 27015 -tickrate 64 +mapgroup mg_active +map de_dust2 -authkey E827ED43FD1235C8E57C314711235261

echo (%date%) - (%time%) WARNING: csgo_server crashed, restarting...
echo (%date%) - (%time%) WARNING: csgo_server crashed, restarting... >>Watchdog_logs/(%date%).txt 
goto start4

:smoke_128
cls
echo Protecting csgo_server from crashes...
echo If you want to close csgo_server and this script
echo close the csgo_server window and type Y 
echo depending on your language followed by Enter.
goto start3

:start5
echo (%date%) - (%time%) csgo_server started.
echo (%date%) - (%time%) csgo_server started. >>Watchdog_logs/(%date%).txt 
start /wait srcds.exe srcds -game csgo -console -usercon +game_type 0 +game_mode 1 -maxplayers_override 10 +exec smoke.cfg -port 27015 -tickrate 128 +mapgroup mg_active +map de_dust2 -authkey E827ED43FD1235C8E57C314711235261

echo (%date%) - (%time%) WARNING: csgo_server crashed, restarting...
echo (%date%) - (%time%) WARNING: csgo_server crashed, restarting... >>Watchdog_logs/(%date%).txt 
goto start5






