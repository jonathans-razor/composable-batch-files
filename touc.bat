:_

@echo off

if "%~1" == "" goto main
if "%~1" == "?" goto help

goto update-single-file



:_

:help
cls
echo. & echo * Wrapper around Git touch command.
echo. & echo * Usage: %0 [space separated parameter(s)]
echo. & echo * Batch file style: Single purpose
exit/b



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:update-single-file
echo. & echo * Update a single file to the current date.
call fe "%~1" || exit/b 5
call pn sg>nul
"%cbf-pt%\touch.exe" "%~1"
exit/b



:_
:main
echo. & echo * Update all files in the current folder to the current date.
call pn sg>nul
"%cbf-pt%\touch.exe" *.*
exit/b



:_
