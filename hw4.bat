:_
@echo off

if "%~1" == "" goto help

rem The line below is is a very helpful command.
goto %1



:_

:help

cls

echo. & echo * Hello World batch file that demonstrates the basic function structure behind Composable Batch Files.

echo. & echo   Usage: %0 [Parameter 1]

echo. & echo * Parameter 1: Function you wish to execute.

echo.
echo            Parameter  Description
echo --------------------  -----------------------------------------------------
echo           function-1  Function that does [blank].
echo           function-2  Function that does [blank].
echo           function-3  Function in ANOTHER batch file that does [blank].
echo    same-function-2dw  Same function called 2 different ways.
echo        all-functions  Function that runs all functions.

echo.
echo Question: How many functions are in this file?

exit/b



:_
:function-1
echo. & echo * Function 1.
rem Put some code here.
exit/b



:_
:function-2
echo. & echo * Function 2.
rem Put some code here.
exit/b



:_
:function-3
echo. & echo * Function 3.
rem Put some code here.
exit/b


:_
:all-functions
echo. & echo %fp% * All functions.
call :function-1
call :function-2
call :function-3
exit/b



:_
:same-function-2dw
echo. & echo * Same function called 2 different ways.
call :function-3
call hw4 function-3
exit/b



:_
:function-4
cls
echo. & echo * Function 3 in another batch file.
call hw5 function-1

exit/b



:_
