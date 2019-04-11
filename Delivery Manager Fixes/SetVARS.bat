::Set path variables
set "callDir=%~dp0"
set "basePath=%~dp0..\..\"
set "repoDir=%~dp0..\"
set "gitDir=%~dp0..\Misc\git\bin\"
if "%myrace1PVScripts%"=="" setx myrace1PVScripts %callDir%
setx myrace1PVScripts "%callDir%\"
