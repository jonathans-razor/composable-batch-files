:_

@echo off
if "%~1" == "?" goto help
if "%~1" == "" goto help
if "%~1" == "vers" goto vers
goto main



:_
:help
cls
echo. & echo * Use Node to compile and run javascript files.

echo. & echo * Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1: The name of the javascript file you wish to compile and run.
echo                        Or to get the node version, type "vers".

echo. & echo * Samples:
echo   %~n0 fizz

exit/b

rem creation date: 



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:vers

echo.
node --version

exit/b



:_
:main

node %1

exit/b



:_
