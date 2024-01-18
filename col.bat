:_
@echo off

if "%~1" == "" goto main
if "%~1" == "?" goto help

goto %1



:_
:help

echo. & echo * Performs shell color-related operations.

echo. & echo   Parameter 1 (Optional)

echo. & echo   Alias for the color you would like.

exit/b



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:s
:show

echo. & echo * Show values.

color /?

exit/b



:_
:1
:flash

echo. & echo * Yellow on black.

color 0e

exit/b



:_
:2
:velv

echo. & echo * Red velvet. Red on charcoal.

color 4f

exit/b



:_
:3
:sail

echo. & echo * White on blue.

echo.
color fc

exit/b



:_
:4
:hellow

echo. & echo * Hellow Orld.

color 8f

exit/b



:_
:14
:24
:40
:f4

echo. & echo * %1.

color %1

exit/b



:_

:main

echo. & echo * Reset color to original value.

color

exit/b



:_
