:_

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

call paco "%~1" . && goto current-folder-filename

goto validate_user_input



:_

:help

cls

echo. & echo * Copy a filename to the clipboard.

echo.
echo   Usage: %0 [space separated parameter(s)]

echo. & echo * Parameter 1: Current folder filename or alias of the filename of you wish to copy to the clipboard.

exit/b

rem lu: Oct-24-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:current-folder-filename

echo. & echo * Copy filename "%~1" to the clipboard.

echo %~1 | clip

exit/b



:_

:validate_user_input

call fnv %1

if errorlevel 1 exit/b



:_

:main

echo. & * Copy filename "%cbf-fn%" to the clipboard.

echo %cbf-fn% | clip

exit/b



:_ (!rfsp) (mov-7)
