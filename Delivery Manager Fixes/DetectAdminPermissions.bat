@echo off
echo Administrative permissions required. Detecting permissions...

net session >nul 2>&1
if %errorLevel% == 0 (
	echo Success: Administrative permissions confirmed.
) else (
	echo Failure: Current permissions inadequate.
	echo.
	echo !!!   Please Right Click the Icon and Run As Admin  !!!
	pause >nul
	exit
)
@echo on
cls