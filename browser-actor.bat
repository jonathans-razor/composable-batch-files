:_
@echo off

if "%~2" == "" goto run-application-without-parameter

call paco "%~2" .>nul && goto open-current-folder-file

if "%~1" == "?" goto help

goto main



:_
:help
cls

echo. & echo * Defines the behavior of calling browsers.

echo. & echo * Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1:
echo   If contains period, current folder filename you wish to open in the browser.
echo   If left blank, browser is opened.
echo   Else surf to URL.

echo. & echo * Batch file style: Multipurpose

echo. & echo * Samples:
echo   %~n0 template-tag-example.html

exit/b

lu: 
Mar-13-2024



:_

    .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   
   / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / 
        `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'



:_
:open-current-folder-file

echo. & echo * Open current folder file.

e.bat %2 /e:%1

exit/b



:_
:run-application-without-parameter

echo. & echo * Run application without parameter.

call an %1

start "title" "%cbf-app%"

exit/b



:_
:main

call sf %2 %1

exit/b



:_
