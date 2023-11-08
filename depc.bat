:_

@echo off



:_

set cbf-filep=* Delete the path contents of the passed in alias.



:_

echo. & echo * Route callers.

if "%~1" == "" goto help

if "%~1" == "?" goto help

goto main



:_

:help

cls

echo.
echo %cbf-filep%

rem lu: 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Alias to process.

echo.
echo %parameter_1%

echo.
echo Batch file style: Single Purpose

echo.
echo Entangled variable: cbf-pt

echo.
echo Examples:

echo.
echo %0 test

echo.
echo %0 audi

exit/b

(!rfsp) (mov4)



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:main

echo.
echo %cbf-filep%

call t %1

if errorlevel 1 exit/b

echo.
del /s /q *.*

exit/b



:_
