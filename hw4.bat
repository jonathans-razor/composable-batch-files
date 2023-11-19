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
echo           function-4  Call function 3 in ANOTHER batch file.
echo           function-5  Echo parameters.
echo        all-functions  Function that runs all functions.
echo                  4ds  Same function called 2 different syntaxes.

echo.
echo Question: How many functions are in this file?

exit/b



:_
:function-1
rem Note: Each function has a "function purpose" which describes what the function does.
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
:function-4
cls
echo. & echo * Call function 3 in ANOTHER batch file.
call hw5 function-1

exit/b



:_
:ep
:function-5
cls
echo. & echo * Echo parameters.

echo. & echo * Parameter 1: %1
echo. & echo * Parameter 2: %2
echo. & echo * Parameter 3: %3
echo. & echo * All parameters: %*

exit/b



:_
:all-functions
echo. & echo * All functions.
call :function-1
call :function-2
call :function-3
exit/b



:_
:4ds
echo. & echo * Same function called 4 different syntaxes.
call :function-3
call hw4 function-3
call %0 function-3
goto function-3
rem Question: What is the difference between "call" and "goto"?
exit/b



:_
