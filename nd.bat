:_

@echo off

if "%~1" == "?" goto help
if "%~1" == "" goto help

call paco "%~1" . && goto run

goto %1



:_
:help
cls
echo. & echo * Use Node to compile and run javascript files and for Node operations.

echo. & echo * Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1: The name of the javascript file you wish to compile and run.
echo   Or function you wish to run.

echo. & echo * Samples:
echo   %~n0 fizz.js

exit/b

rem creation date: 



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:vers
echo. & echo * Node version.
echo.
node --version
exit/b



:_
:hw
rem echo. & echo * Hello world.
call t iw>nul
call nd run hello-world.js
exit/b



:_
:rs
rem echo. & echo * Reverse string.
call t dsa>nul
call nd run reverse-string-3.js hello
exit/b



:_

:run

echo. & echo * Run JavaScript file.

call fe "%~1" || exit/b
call paco "%~1" .js || exit/b

set cbf-fn=%~1

echo.
shift /1
node "%cbf-fn%" %*

exit/b



:_
