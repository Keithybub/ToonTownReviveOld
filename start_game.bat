@echo off

set /P ttiUsername="Username: "
set /P ttiPassword="Password: "
set ttiUsername=usernamehere
set ttiPassword=password
set TTI_PLAYCOOKIE=%ttiUsername%
set TTI_GAMESERVER=25.133.35.196
rem Read the contents of PPYTHON_PATH into %PPYTHON_PATH%:
set /P PPYTHON_PATH=<PPYTHON_PATH

echo ===============================
echo Starting Toontown Revive...
echo ppython: %PPYTHON_PATH%
echo Username: %ttiUsername%
echo Client Agent IP: %TTI_GAMESERVER%
echo ===============================

%PPYTHON_PATH% -m toontown.toonbase.ToontownStartRemote
pause
