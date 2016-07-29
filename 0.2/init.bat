@echo off
title RaserCraft-1.8
echo (%time%) Server Startup
start /B /wait java -server -XX:+UseConcMarkSweepGC -XX:OnOutOfMemoryError="kill -9 %p" -Xmx2G -jar spigot.jar nogui -o true
start res.bat
exit