:_

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto main



:_

:help

cls

echo. & echo * Double-click on a file.

rem lu: 

echo. & echo   Usage: %0 [space separated parameter(s)]

echo. & echo   Filename of the file you wish to double-click.

echo. & echo   Batch file style: Single Purpose

echo. & echo   Entangled variables: cbf-app and cbf-parameter

echo. & echo * Examples:

echo. & echo   %0 c:\a\j1.txt

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
