:_

@echo off

if "%~1" == "?" goto help
call pn sg>nul
if "%~1" == "" goto main

goto update-single-file



:_

:help
cls
echo. & echo * Wrapper around Git touch command.
echo. & echo   Usage: %0 [space separated parameter(s)]
echo. & echo * Parameter 1:
echo.  If blank, all files in current folder are updated.
echo.  Else, the filename in parameter 1 is updated.
echo. & echo * Batch file style: Single purpose
exit/b



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:update-single-file
echo. & echo * Update a single file to the current date.
call fn "%~1" || exit/b 5
"%cbf-pt%\touch.exe" "%~1"
exit/b



:_
:main
echo. & echo * Update all files in the current folder to the current date.
"%cbf-pt%\touch.exe" *.*
exit/b



:_
