::Update from git repo
if not exist %basePath% (mkdir "%basePath%" && pushd %basePath% && echo yes | %gitDir%git.exe clone git@github.com:RegionalAdultEducation/PearsonVUE-Scripts.git) ELSE (pushd %basePath% && if exist %repoDir% (pushd %repoDir% && %gitDir%git.exe checkout master && %gitDir%git.exe reset --hard origin/master && %gitDir%git.exe pull origin master) else (echo yes | %gitDir%git.exe clone git@github.com:RegionalAdultEducation/PearsonVUE-Scripts.git))
exit /b %ERRORLEVEL%