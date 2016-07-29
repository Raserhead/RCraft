@echo off
title RaserCraft-1.8
setlocal
set Directory=%~dp0
set Directory=%Directory:~0,-1%
for %%d in (%Directory%) do set ParentDirectory=%%~dpd
cd %ParentDirectory%
echo (%time%) Server Startup
echo Enter command "stop" to shutdown the server.
timeout /t 5 /nobreak
start /B /wait java -server -XX:+UseConcMarkSweepGC -XX:OnOutOfMemoryError="kill -9 %p" -Xmx8G -jar spigot.jar nogui -o true
exit