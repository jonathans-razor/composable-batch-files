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



:_+ Language Features Family (!fclf) (skw language-functions-series-jj)



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

set cbf-string=%2
if "%~2" == "" set cbf-string=desserts

echo.
node reverse-string.js %cbf-string%

exit/b



::_
:v
:vers

echo. & echo * Version from %0.bat.

echo.
node --version

exit/b

 Date          Version  Machine
 -----------  --------  -------

  Jan-9-2024  v20.10.0      XPS

 Dec-29-2023  v18.18.0      XPS



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

call fn "%~1" || exit/b
call paco "%~1" .js || exit/b

echo.
node %*

exit/b



:_+ Node - HW Browser Version



::_
:star

rem echo. & echo * Start the Node server.

call t nwe>nul
start "Node Server" cmd /k node .

exit/b



::_
:eco
:hwb

echo. & echo * Open Node hello world - browser edition.

call :star
call vc .
call lh 3000

exit/b

lu:
Jan-9-2024



:_
