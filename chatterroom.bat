@echo off
title chatterroom

set "NetworkLogFolder=\\YOUR-SERVER-NAME\SharedChatFolder\"
set "ChatFile=%NetworkLogFolder%Chat.txt"

if not exist "%NetworkLogFolder%" (
    color c
    echo ERROR: Cannot connect to the shared network folder!
    echo Please verify your network connection or path configuration.
    echo Current Path: %NetworkLogFolder%
    pause
    exit
)

:join
cls
color a
echo chatterroom
set "name="
set /p name=Enter Your Name: 
if "%name%"=="" goto join
set /p password=Enter Your Password: 

echo %name% Joined command prompt services to go through hmm.bat simplicitating the services to hmm.bat then type in chat! >> "%ChatFile%"
goto chatterroom

:chatterroom
cls
color a
echo chatterroom
echo ===================================================
if exist "%ChatFile%" (type "%ChatFile%")
echo ===================================================
set "Input="
set /p Input=Say Something or Press enter to refresh: 

if "%Input%"=="" goto chatterroom

echo %name%: %Input% >> "%ChatFile%"
goto chatterroom


