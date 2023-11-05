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
echo. & echo Function 3 in %0.bat.
rem Put some code here.
exit/b



:_
