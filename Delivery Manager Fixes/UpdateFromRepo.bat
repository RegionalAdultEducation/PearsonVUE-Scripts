::Update from git repo
set "prevDir=%cd%"
if not exist "%basePath%" (
	echo Base Path Does not Exist. Creating and downloading Scripts.
	mkdir "%basePath%"
	pushd "%basePath%"
	"%gitDir%git.exe" clone git@github.com:RegionalAdultEducation/PearsonVUE-Scripts.git
) ELSE (
	echo Base Path exists. Continuing...
	pushd "%basePath%"
	if exist "%repoDir%" (
		echo Repo exists, checking for updates...
		pushd %repoDir%
		"%gitDir%git.exe" checkout master 2>&1
		"%gitDir%git.exe" reset --hard origin/master 2>&1
		"%gitDir%git.exe" pull -q origin master
		echo.
	) else (
		echo Repo doesn't exist, cloning...
		"%gitDir%git.exe" clone git@github.com:RegionalAdultEducation/PearsonVUE-Scripts.git
	)
)
pushd "%prevDir%"
exit /b %ERRORLEVEL%