:_

@echo off

if "%~1" == "" goto main
if "%~1" == "?" goto help

goto %1



:_
:help

echo. & echo * Draws a separator.

echo. & echo   Usage: %0 [Option parameters]

echo. & echo * Parameter 1:
echo   The name of your preferred separator.

exit/b

lu:
Feb-22-2024



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:aa-diamond-bridge
:aa-test

rem echo. & echo * Show Ascii art '%1'.

call n cbf>nul
type %cbf-pt%\%1.txt

exit/b



:_
