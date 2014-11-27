@echo off


set ttiUsername=username

set TTI_PLAYCOOKIE=%ttiUsername%

set TTI_GAMESERVER=127.0.0.1
set /P PPYTHON_PATH=<PPYTHON_PATH


echo ===============================

echo Starting Toontown Revive...

echo ppython: %PPYTHON_PATH%

echo Username: %ttiUsername%

echo ===============================


%PPYTHON_PATH% -m toontown.toonbase.ToontownStart

pause