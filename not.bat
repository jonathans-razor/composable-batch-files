:_
@echo off

if "%~1" == "?" goto help

goto main



:_
:help

echo. & echo * Draws a notice graphic with a message.

echo. & echo   Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1 (Optional):
echo   Message to display. 

echo. & echo   Batch file style: Single purpose

echo. & echo * Samples:
echo   %~n0 File did not previously exist.

exit/b



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:main

rem echo. & echo * Show Ascii art notice.
call n ascii-art-notice>nul
type %cbf-message-graphic%
echo    %*

exit/b 1



:_
