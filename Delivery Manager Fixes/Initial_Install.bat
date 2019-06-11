pushd "%~dp0"
call DetectAdminPermissions.bat
::Setup Paths
set "basePath=C:\MyRACE1-VUE_Scripts\"
set /p "basePath=Enter name or press [ENTER] for default [%basePath%]: "

set "repoDir=%basePath%PearsonVUE-Scripts\"
set "gitDir=%repoDir%Misc\git\bin\"
set "callDir=%repoDir%Delivery Manager Fixes\"
setx myrace1PVScripts "%callDir%\"

echo F | xcopy "..\Misc\Delivery Manager.lnk" "%HOMEDRIVE%%HOMEPATH%\Desktop\Delivery Manager.lnk" /y

::Clone repo
set "gitDir=%cd%\..\Misc\git\bin\"
call UpdateFromRepo.bat

exit /b %ERRORLEVEL%