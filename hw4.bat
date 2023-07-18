:_
@echo off

if "%~1" == "" goto help

goto %1



:_

:help

echo. & echo * Hello World batch file that demonstrates the basic structure concept behind Composable Batch Files.

echo. & echo * Usage: %0 [Parameter 1]

echo. & echo Parameter 1: Function you wish to execute.

echo.
echo       Parameter  Description
echo ---------------  -----------------------------------------------------
echo      function-1  Function that does [blank].
echo      function-2  Function that does [blank].
echo      function-3  Function in ANOTHER batch file that does [blank].
echo  some_functions  Function that runs some functions.
echo   all_functions  Function that runs all functions.

exit/b

echo Last Updated: Jun-21-2023



:_

:some-functions

set fp=* Some functions.

echo.
echo %fp%

call :function-1

call hello_world_3 function_3

exit/b



:_

:all_functions

set fp=* All functions.

echo.
echo %fp%

call :function-1

call :function-2

call hello_world_2 function_3

exit/b



:_

:function-2

set fp=* Function 2. Another call to this batch file.

echo.
echo %fp%

rem echo * Put some code here.

exit/b



:_

:composer_function

set fp=* Composing encourages modularity, which is a software best practice.

echo.
echo %fp%

call :function-1

call :function-2

exit/b



:_

:function-3

set fp=* Function 3. A call to another batch file.

call hello_world_2 function-3

exit/b


:_
:function-1
echo. & echo * Function 1.
echo. & echo * Put some code here.
exit/b



:_
