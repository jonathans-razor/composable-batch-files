:_
@echo off

echo. & echo * Route callers.

if "%~1" == "q" goto question
if "%~1" == "" goto help
if "%~1" == "?" goto help

goto main



:_
:help
cls
echo. & echo * Google command line query tool.
echo. & echo   Usage: 
echo   %~n0 [space separated parameter(s)]
echo. & echo   Parameter 1:
echo   q: Will ask the pre-written in question in the cbf-question variable.
echo. & echo   Creation Date:
echo    Sep-7-2026
echo. & echo   Samples:
echo   %~n0 
exit/b



:_

    .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   
   / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / 
        `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'



:_
:main
echo. & echo * Google using Brave from the command line. Automatically passes in your command line parameters.
start "" "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe" "https://www.google.com/search?q=%*"
exit/b



:_
:question
echo. & echo * Google using Brave from the command line.
call n %2
start "" "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe" "https://www.google.com/search?q=%cbf-question%"
exit/b



:_
