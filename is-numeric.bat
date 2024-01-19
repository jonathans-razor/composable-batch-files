:_
@echo off

title CBF: %0

if "%~1" == "" err Parameter 1 is required.
if "%~1" == "?" goto help

goto main



:_
:help

cls

echo. & echo  * Checks whether parameter 1 is numeric.

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1:
echo    Data to test for numeric content.

echo. & echo    Batch file style: Multipurpose

echo. & echo  * Samples:
echo    %~n0 1
echo    %~n0 a

exit/b

lu: 
Jan-18-2024



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:main

rem echo. & echo * When the two are equal, the variable or parameter is numeric.

set /a numeric_checker=%~1

rem echo. & echo nc: %numeric_checker%

if %numeric_checker% neq %~1 exit/b 1

exit/b 0



:_
