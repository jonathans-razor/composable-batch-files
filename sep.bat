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
rem echo. & echo * Show Ascii art separator.
call n ascii-art-2023-separator>nul
type %cbf-graphic%
exit/b



:_
