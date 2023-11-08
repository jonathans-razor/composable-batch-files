:_

@echo off



:_

set cbf-filep=* Clear screen, modify the path and reset color.

echo.
echo %cbf-filep%

title=CBF



:_

echo. & echo * Route callers.

if "%~1" == "?" goto help

goto main



:_ (!rfsp) (mov-6)

:help

echo.
echo Usage: %0

exit/b



:_

:main

echo. & echo * Clear screen and reset color.

call t a

cls

color

exit/b



:_
