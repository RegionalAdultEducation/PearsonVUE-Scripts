echo ----- Running Fixes
call "Fix Visible Applications Error.bat" >nul 2>&1
IF %ERRORLEVEL% NEQ 0 ( echo. && echo /\/\/\/\ ERROR: %ERRORLEVEL% && pause && exit /b %ERRORLEVEL%)
echo.
echo ----- Running Delivery Manager
start "" "%programfiles(x86)%\Pearson VUE\PreRun.exe" -f VTSDeliveryManager.lpr
IF %ERRORLEVEL% NEQ 0 ( echo. && echo /\/\/\/\ ERROR: %ERRORLEVEL% && pause && exit /b %ERRORLEVEL%)

