:_
@echo off

if "%~1" == "?" goto help

goto main



:_
:help

echo. & echo * Draws a notice graphic with a message.

echo. & echo * Usage: %0

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
