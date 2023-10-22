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

rem creation date: 



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_+ Language Features Family (!fylf)



::_
:ep
echo. & echo * Echo parameters from %0.bat.
call t dsa>nul
call %0 echo-parameters.js 1 2 3
exit/b



::_
:hw
rem echo. & echo * Hello world.
call t dsa>nul
call %0 hello-world.js
exit/b



::_
:rs
rem echo. & echo * Reverse string.
call t dsa>nul
%0 reverse-string-3.js hello
exit/b



::_

:run

rem echo. & echo * Run JavaScript file.

call fe "%~1" || exit/b
call paco "%~1" .js || exit/b

shift
echo.
node %*

exit/b



::_
:star
rem echo. & echo * Start the Node server.
call t nwe>nul
start "Node Server" cmd /k node .
exit/b



::_
:vers
echo. & echo * Node version.
echo.
node --version
exit/b



:_
