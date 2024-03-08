:_
@echo off

if "%~1" == "?" goto help

goto main



:_
:help

echo. & echo * Draws an error graphic with an error message.

echo. & echo   Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1 (Optional):
echo   Message to display. 

echo. & echo   Batch file style: Single purpose

echo. & echo * Samples:
echo   %~n0 File doesn't exist.

exit/b

rem lu: 
Mar-8-2024
Sep-22-2022



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:main

rem echo. & echo * Show Ascii art error.
call n ascii-art-error>nul
type %cbf-message-graphic%
echo       Error: %*

exit/b 1



:_
