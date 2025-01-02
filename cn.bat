:_
@echo off

if "%~1" == "?" goto help

if "%~1" == "/h" goto github-https
if "%~1" == "/v" goto github-https-stored-value
if "%~1" == "/s" goto github-ssh
if "%~1" == "/test" goto %2

goto github-https-stored-value



:_
:help
cls
echo. & echo * Clone a repository.

echo. & echo   Usage: %0 [space separated parameter(s)]
echo. & echo   If parameter 2 is left blank, GitHub https stored value is used.

echo. & echo   Examples:
echo   GitHub https stored value, e.g: %0 /v fgt
echo   GitHub https, e.g: %0 /h https://github.com/jonathans-razor/For-Git-Testing.git
echo   GitHub ssh, e.g: %0 /s git@github.com:jonathans-razor/For-Git-Testing.git

echo.
echo   Testing Purposes clone, e.g: %0 /test Sep-9-2023_7_28_PM

exit/b
rem creation date: Sep-9-2023



:_
:help
cls
echo. & echo * Cloning operations.

echo. & echo * Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1:
echo  

echo. & echo * Batch file style: Multipurpose

echo. & echo * Samples:
echo   %~n0 

exit/b

rem creation date: 



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:github-ssh
echo. & echo * GitHub ssh.
echo %2 | find /i "git">nul
if errorlevel 1 (
  call err "git" was not found in the second parameter. Mar-01-2023-23-24
  exit/b
)
echo.
git clone %2 -b %cbf-branch%
exit/b



:_
:github-https-stored-value

echo. & echo * GitHub https stored value.

set cbf-gh=

if "%~2" == "" (
  call n %1
) else (
  call n %2
)

if "%cbf-gh%" == "" (
  call err "cbf-gh" is not defined for alias "%1". Mar-06-2023-14-26
  exit/b
)

echo.
@echo on
git clone %cbf-gh%
@echo off
exit/b



:_
:github-https

echo. & echo * GitHub https.

echo %2 | find /i "https">nul

if errorlevel 1 (
  call err "https" was not found in the second parameter. Mar-01-2023-23-24
  exit/b
)

echo.

@echo on
git clone %2
@echo off

exit/b



:_
