@echo off
title RaserCraft-1.8_Menu

:choice
cls
echo (%time%) WARNING: Server closed or crashed.
set /P a=do you want to restart? [Y/N]
if /I "%a%" EQU "Y" goto :restart
if /I "%a%" EQU "N" goto :choice2
goto :choice

:restart
cls
echo Restarting the server...
timeout /t 10 /nobreak
goto :Minecraft

:choice2
set /P a=Launch config menu? [Y/N]
if /I "%a%" EQU "Y" goto :configlaunch
if /I "%a%" EQU "N" goto :stop
goto :choice2

:configlaunch
start RunMe.bat
exit

:stop
cls
echo Closing the server...
timeout /t 5 /nobreak
exit