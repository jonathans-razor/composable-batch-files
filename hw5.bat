@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto %1



:_

:help

cls 

echo. & echo * Demonstrates how to call a function in a different batch file.

echo. & echo * Usage: %0 [single parameter]

echo.
echo     Parameter  Description
echo -------------  -----------------------------------------------------
echo    function-1  Function that does [blank].

exit/b



:_
:function-1

echo. & echo * Function 1 in %0.bat.
rem Put some code here.

exit/b



:_
:f2

cls

echo. & echo * Function 2. An example of how to set an environment variable.

set cbf-hello=

echo. & echo cbf-hello: %cbf-hello%

@echo on
set cbf-hello=Hello world.
@echo off

echo. & echo cbf-hello: %cbf-hello%

exit/b



:_
