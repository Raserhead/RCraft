@echo off
title RaserCraft-1.8_StartUp
echo Welcome to RaserCraft!
timeout /t 5
:allocq
cls
set /P a=Do you want to change memory allocation? [Y/N]?
if /I "%a%" EQU "Y" goto :alloc
if /I "%a%" EQU "N" goto :start
goto :allocq

:alloc
notepad init.bat
goto :allocq

:start
echo Type Stop to shutdown the server.
timeout /t 5 /nobreak
:Minecraft
cls
echo (%time%) Launching Server....
start init.bat
exit