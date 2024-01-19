:_

@echo off
if "%~1" == "?" goto help
goto main



:_

:help
echo. & echo * Draws an error graphic with an error message.
echo. & echo * Usage: %0
exit/b
rem lu: Sep-22-2022



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:main
rem echo. & echo * Show Ascii art error.
call n ascii-art-error>nul
type %cbf-error-graphic%
echo       Error: %*
exit/b 1



:_
