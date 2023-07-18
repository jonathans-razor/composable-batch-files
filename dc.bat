:_

@echo off



:_

set cbf-filep=* Double-click on a file.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "?" goto help

goto main



:_

:help

cls

echo.
echo %cbf-filep%

rem lu: 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Filename of the file you wish to double-click.

echo.
echo %parameter_1%

echo.
echo Batch file style: Single Purpose

echo.
echo Entangled variables: cbf-app and cbf-parameter

echo.
echo Examples:

echo.
echo %0 dc c:\a\j1.txt

exit/b

(!rfsp) (mov4)



:_

   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--' 



:_

:main

set cbf-app=%~1

set cbf-parameter=

call r

exit/b



:_ (!rfsp) (mov-7)
