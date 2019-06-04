echo ----- Running Fixes
call "Fix Visible Applications Error.bat" >nul 2>&1
IF %ERRORLEVEL% NEQ 0 ( echo. && echo /\/\/\/\ ERROR: %ERRORLEVEL% && pause)
echo.
echo ----- Running Delivery Manager
if exist "%programfiles(x86)%\Pearson VUE\app\profiles\deliverymanager.lpr" (
start "" "%programfiles(x86)%\Pearson VUE\PreRun.exe" -c "%programfiles(x86)%\Pearson VUE\\"  -f deliverymanager.lpr
) else (
start "" "%programfiles(x86)%\Pearson VUE\PreRun.exe" -f VTSDeliveryManager.lpr
)
IF %ERRORLEVEL% NEQ 0 ( echo. && echo /\/\/\/\ ERROR: %ERRORLEVEL% && pause && exit /b %ERRORLEVEL%)