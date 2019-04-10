@echo off
pushd "%~dp0"
cls
call DetectAdminPermissions.bat
@echo off
echo *********************************************
echo **  Running Delivery Manager Script        **
echo **               by Bryan Smith            **
echo **             bsmith@myrace1.org          **
echo *********************************************
echo.
echo !!! If Error Occurs. Try running again to be
echo !!! to be sure. Script updates can break the
echo !!! first run.
echo.
::
::Run delivery manager
echo ----- Checking for updates. Please Wait.
call SetVARS.bat
call UpdateFromRepo.bat
IF %ERRORLEVEL% NEQ 0 ( 
	echo -------- ERROR: %ERRORLEVEL%
	IF %ERRORLEVEL% NEQ 1 ( pause )
)
echo.
pushd "%~dp0"
call Launch_DeliveryManager.bat 2>&1
IF %ERRORLEVEL% NEQ 0 ( echo -------- ERROR: %ERRORLEVEL% && pause)