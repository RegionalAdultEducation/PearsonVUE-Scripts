pushd "%~dp0"
call DetectAdminPermissions.bat
::Setup Paths
set "callDir=%~dp0"
set "basePath=C:\MyRACE1-VUE_Scripts\"
set "repoDir=%basePath%PearsonVUE-Scripts\"
set "gitDir=%repoDir%Misc\git\bin\"
setx myrace1PVScripts "%callDir%\"

::Setup SSH
echo github.com,192.30.252.*,192.30.253.*,192.30.254.*,192.30.255.* ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAq2A7hRGmdnm9tUDbO9IDSwBK6TbQa+PXYPCPy6rbTrTtw7PHkccKrpp0yVhp5HdEIcKr6pLlVDBfOLX9QUsyCOV0wzfjIJNlGEYsdlLJizHhbn2mUjvSAHQqZETYP81eFzLQNnPHt4EVVUh7VfDESU84KezmD5QlWpXLmvU31/yMf+Se8xhHTvKSCZIFImWwoG6mbUoWf9nzpIoaSjB+weqqUUmpaaasXVal72J+UX2B+2RPW3RcT0eOzQgqlJL3RKrTJvdsjE3JEAvGq3lGHSZXy28G3skua2SmVi/w4yCE6gbODqnTWlg7+wC604ydGXA8VJiS5ap43JXiUFFAaQ==>>%HOMEDRIVE%%HOMEPATH%\.ssh\known_hosts
echo F | xcopy ..\Misc\MyRACE1-PV-ReadOnly "%HOMEDRIVE%%HOMEPATH%\.ssh\id_rsa" /y
echo F | xcopy "..\Misc\Delivery Manager.lnk" "%HOMEDRIVE%%HOMEPATH%\Desktop\Delivery Manager.lnk" /y

::Clone repo
set "gitDir=%cd%\..\Misc\git\bin\"
call UpdateFromRepo.bat

exit /b %ERRORLEVEL%