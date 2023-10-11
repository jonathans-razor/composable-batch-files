:_

@echo off
if "%~1" == "?" goto help
if "%~1" == "" goto help

echo %1| find /i ".">nul
if errorlevel 1 goto %1

goto run



:_
:help
cls
echo. & echo * Use Node to compile and run javascript files.

echo. & echo * Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1: The name of the javascript file you wish to compile and run.
echo                        Or node function you wish to run.

echo. & echo * Samples:
echo   %~n0 fizz

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

:run

rem echo. & echo * Run JavaScript file.

call fe "%~1" & if errorlevel 1 exit/b
call paco "%~1" .js & if errorlevel 1 exit/b

echo.
node "%~1" %2 %3 %4 %5 %6 %7 %8 %9

exit/b



:_
