@echo off
if "%~1" == "?" goto help
if "%~1" == "a" goto all
goto main



:help
cls
echo. & echo * Now playing.

echo. & echo * Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1: The now playing number.

echo. & echo * Batch file style: Multipurpose

echo. & echo * Samples:
echo   %~n0 1
echo   %~n0 2
echo   %~n0 3
echo   %~n0 all

exit/b
rem creation date: May-24-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:all

echo. & echo * Show all nps starting at cbfnp starting point.

echo.>%tmp%\np-list.txt

set cbfnp=0
echo %cbfnp% =>>%tmp%\np-list.txt
call n %0%cbfnp%>>%tmp%\np-list.txt
if errorlevel 1 exit/b

:beginning-of-loop
set /a cbfnp=%cbfnp%+1
echo.>>%tmp%\np-list.txt
echo.>>%tmp%\np-list.txt
echo %cbfnp% =>>%tmp%\np-list.txt
call n %0%cbfnp%>>%tmp%\np-list.txt
if errorlevel 1 goto end-of-loop
goto beginning-of-loop

:end-of-loop
call an npp>nul
start "Test Title" "%cbf-app%" "%tmp%\np-list.txt"
exit/b



:_
:main
call n %0%1
if errorlevel 1 exit/b
call pn 1m>nul
set /p cbf-nptext=<"%cbf-pt%\np%1.txt"
clip < "%cbf-pt%\np%1.txt"
echo. & echo * Clipboard loaded (%cbf-nptext%).
exit/b