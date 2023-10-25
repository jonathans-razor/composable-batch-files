@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

call paco "%~1" . && goto current-folder-filename

goto validate-input



:_
:help
echo. & echo * Copy a file's content to the clipboard.
echo. & echo   Usage: %0 [space separated parameter(s)]
echo. & echo * Parameter 1: Alias of the file you wish to copy.
exit/b



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:current-folder-filename

echo. & echo * Copy contents of filename "%~1" to the clipboard.

clip < %~1

exit/b



:_

:validate-input

call fnv %1

if errorlevel 1 (
  exit/b
)



:_

:main

echo. & echo * Copy contents of filename "%~1" to the clipboard.

clip < "%cbf-fn%"

exit/b



