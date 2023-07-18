@echo off
if "%~1" == "" goto main
if "%~1" == "?" goto help
if "%~1" == "/l" goto leverage-standard-vars
goto main



:_
:help
cls
echo. & echo * Run Bitbucket DCV or leveraged name.
echo. & echo * Usage: %0 [space separated parameter(s)]
echo. & echo * Parameter 1:
echo   If equal to "/l", a full name at parameter 1 will leverage :st-vars to go to the appropriate Bitbucket repository.
echo   If parameter 2 is left blank, a DCV is executed.
exit/b
rem creation date: Mar-01-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:leverage-standard-vars
echo. & echo * Leverage standard vars for "%2".
set cbf-pd=%2
call nv st-vars
set cbf-parameter=%cbf-bi%
call an kr>nul
call r
exit/b



:_
:main
rem echo p1: %1
fxw %0 %1
exit/b