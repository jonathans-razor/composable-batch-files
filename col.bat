:_

@echo off

if "%~1" == "" goto main
if "%~1" == "?" goto help

goto %1



:_

:help

echo. & echo * Performs shell color-related operations.

set parameter_1=Parameter 1 (Optional): Function to execute.
set parameter_1=%parameter_1% 

echo.
echo %parameter_1%

echo.
echo Menu of Available Functions

echo.
echo  File  Description
echo  ----  ------------------------------------------------------------------
echo     s  Show color values.

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:main

set fp=* Reset color to original value.

echo.
echo %fp%

color

exit/b



:_

:flash

set fp=* Yellow on black.

rem lu: Jan-22-2019

echo.
echo %fp%

color 0e

exit/b



:_

:s

:show

set fp=* Show values.

rem lu: Jan-22-2019

echo.
echo %fp%

color /?

exit/b



:_

:error

rem echo. & echo * Error!

rem lu: Sep-7-2022

rem Yellow on black.
color fc

exit/b



:_ (!rfsp) (mov-6)
