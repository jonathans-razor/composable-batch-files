:_

@echo off

if "%~1" == "" goto show-error-level
if "%~1" == "/c" goto clear-error-level
if "%~1" == "?" goto help



:_

:help

cls

echo. & echo * Show or clear errorl level.

rem lu: Oct-06-2022

echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo * Parameter 1 (Optional): 

echo. & echo * If "/c" is passed in, the error level is cleared.

echo. & echo * Batch file style: Single purpose

exit/b



:_

   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--' 



:_

:show-error-level

echo. & echo * Error Level: %errorlevel%

exit/b



:_

:clear-error-level

echo. & echo * Clear error Level.

ver>nul

goto show-error-level

exit/b



:_