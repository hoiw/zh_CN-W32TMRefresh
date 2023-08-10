@echo off
title RefreshTimeOnline
set ErrorCount=0
goto RestartSrv

:RestartSrv
net stop W32Time
net start W32Time|findstr "启动成功"
if "%errorlevel%" == "1" goto CountError
goto SetProperNtpSrv

:SetProperNtpSrv
w32tm /config /manualpeerlist:ntp.aliyun.com /syncfromflags:manual /update
goto RefreshTime

:CountError
if "%ErrorCount%" == "5" goto exit
set /a ErrorCount=%ErrorCount%+1
cls
echo 发生错误!当前错误计数为%ErrorCount%
echo 重试.
goto RestartSrv

:RefreshTime
w32tm /resync |findstr "成功"
if "%errorlevel%" == "1" goto CountError
goto RestartExplorer

:RestartExplorer
taskkill /f /im explorer.exe
ping 127.0.0.1 -n 3>nul
start explorer.exe
goto exit

:exit
exit