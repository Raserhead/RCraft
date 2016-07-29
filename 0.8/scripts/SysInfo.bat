@echo off
title Rasercraft - System Check
echo Displaying system information and issues pertaining to hardware limitations.
echo.
setlocal enableextensions enabledelayedexpansion

for /f "delims=" %%l in ('wmic computersystem get Manufacturer^,Model^,SystemType^,TotalPhysicalMemory /format:list') do >nul 2>&1 set "System_%%l"
for /f "delims=" %%l in ('wmic cpu get * /format:list') do >nul 2>&1 set "CPU_%%l"
for /f "delims=" %%l in ('wmic os get FreePhysicalMemory^,TotalVisibleMemorySize /format:list') do >nul 2>&1 set "OS_%%l"
set /a OS_UsedPhysicalMemory=OS_TotalVisibleMemorySize-OS_FreePhysicalMemory
set num1=%OS_TotalVisibleMemorySize%
set num2=1024
set num3=%OS_FreePhysicalMemory%
set /a sum1=%num1%/%num2%
set /a sum2=%sum1%/%num2%
set /a sum3=%num3%/%num2%
set /a sum4=%sum3%/%num2%
echo Processor Type: %PROCESSOR_ARCHITECTURE%
echo Processor Size: %CPU_AddressWidth%
echo System Type: %System_SystemType%
echo.
if %CPU_AddressWidth% == 64 GOTO :CPUGOOD
echo WARNING: You are not using a 64Bit Processor.
echo You will be limited to a maximum of 2GB when assigning RAM.
:CPUGOOD
if %CPU_AddressWidth% == 64 echo 64Bit Processor Detected:
if %CPU_AddressWidth% == 64 echo Make sure you're running 64bit Java.
echo.
java -version
echo.
echo Total RAM = %sum1% MB
echo Available RAM = %sum3% MB
if %sum1% GTR 2048 GOTO :RAMGOOD
echo WARNING: You are running a small amount of RAM.
echo Assign as little as possible to the server.
:RAMGOOD
if %sum1% LSS 8192 GOTO :NOTBIGRAM
echo Tip: Even if you have a lot of RAM, stick to assigning maximum 4GB.
:NOTBIGRAM
echo.
echo If you received no warnings, then everything should be fine.
exit