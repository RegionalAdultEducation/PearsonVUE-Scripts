@echo off
pushd "%~dp0"
call SetVARS.bat
pushd %callDir%
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
call UpdateFromRepo.bat
echo.
if not %errorlevel% == 0 ( 
	echo -------- ERROR: %errorlevel%
	IF %errorlevel% NEQ 1 ( pause )
)
echo.
call Launch_DeliveryManager.bat 2>&1
IF %errorlevel% NEQ 0 ( echo -------- ERROR: %errorlevel% && pause)