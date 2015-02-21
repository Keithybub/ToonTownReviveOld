@echo off

set MAX_CHANNELS=999999
set STATE_SERVER=4002
set ASTRON_IP=25.133.35.196:7199
set EVENT_LOGGER_IP=25.133.35.196:7197
set /P BASE_CHANNEL="Base Channel (DEFAULT: 1000000): " || ^
set BASE_CHANNEL=1000000

rem Read the contents of PPYTHON_PATH into %PPYTHON_PATH%:
set /P PPYTHON_PATH=<PPYTHON_PATH

echo ===============================
echo Starting Toontown Revive server...
echo ===============================

%PPYTHON_PATH% -m toontown.uberdog.ServiceStart --base-channel %BASE_CHANNEL% ^
               --max-channels %MAX_CHANNELS% --stateserver %STATE_SERVER% ^
               --astron-ip %ASTRON_IP% --eventlogger-ip %EVENT_LOGGER_IP%

pause
