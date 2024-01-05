:_

@echo off

if "%~1" == "" goto main
if "%~1" == "?" goto help
if "%~1" == "r" goto restart-computer



:_

:help

echo. & echo * Shutdown (and restart?) the computer.

echo. & echo   Usage: %0 [parameter]

echo. & echo * Parameter 1 (Optional): If "r" is supplied, restart the computer. If left blank, then shutdown the computer.

exit/b



:_

   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--' 



:_

:restart-computer

echo. & echo * Restart computer.

shutdown /r /t 1

exit/b



:_

:main

echo. & echo * Shut down computer.

shutdown /s /t 1

exit/b



:_
