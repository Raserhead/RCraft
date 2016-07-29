@echo off
title RaserCraft-1.8_StartUp
echo Welcome to RaserCraft!
timeout /t 5
:allocq
cls
set /P a=Do you want to change memory allocation? [Y/N]? Or ? for help.
if /I "%a%" EQU "Y" goto :alloc
if /I "%a%" EQU "N" goto :start
if /I "%a%" EQU "?" goto :help
goto :allocq

:alloc
echo Save and then exit to continue.
notepad init.bat
goto :allocq

:help
notepad READTHIS.txt
goto :allocq

:start
exit