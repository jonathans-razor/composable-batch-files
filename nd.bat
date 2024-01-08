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

echo. & echo   Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1: The name of the javascript file you wish to compile and run.
echo   Or function you wish to run.

echo. & echo * Samples:
echo   %~n0 fizz.js

exit/b

lu: 
Jan-2-2024



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_+ Language Features Family (!fylf) (skw language-functions-series-jj)



::_
:ep

echo. & echo * Echo parameters from %0.bat.

call t dsa>nul
call %0 echo-parameters.js 1 2 3

exit/b



::_
:fz

echo. & echo * Fizzbuzz from %0.bat.

call t d>nul
call %0 fizz.js

exit/b



::_
:hw

rem echo. & echo * Hello world from %0.bat.

call t d>nul
call %0 hello-world.js

exit/b



::_
:rs

echo. & echo * Reverse string (%2) from %0.bat.

call t d>nul

echo.
node reverse-string.js %2

exit/b



::_
:vers

echo. & echo * Version from %0.bat.

echo.
node --version

exit/b

* Node version from nd on XPS Dec-29-2023:
v18.18.0

lu:
Dec-29-2023



::_
:vershi

echo. & echo * Version history.

call an nort>nul

set cbf-parameter=https://nodejs.org/en/about/previous-releases

call r

exit/b



:_

:run

rem echo. & echo * Run JavaScript file.

call fe "%~1" || exit/b
call paco "%~1" .js || exit/b

echo.
node %*

exit/b



:_
:star

rem echo. & echo * Start the Node server.

call t nwe>nul
start "Node Server" cmd /k node .

exit/b



:_
