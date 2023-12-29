:_

@echo off
if "%~1" == "?" goto help
goto main



:_
:help
echo. & echo * Draws a notice graphic with an notice message.
echo. & echo * Usage: %0
exit/b
lu:
Dec-29-2023



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:main
rem echo. & echo * Show Ascii art notice.
call n ascii-art-notice>nul
type %cbf-notice-graphic%
echo   Notice: %*
exit/b



:_
