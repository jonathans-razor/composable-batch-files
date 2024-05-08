:_
@echo off

if "%~1" == "?" goto help

goto main



:_
:help

cls

echo. & echo * Copy app.vue to [blank].

echo. & echo   Usage: 
echo   %~n0 [space separated parameter(s)]

echo. & echo   Parameter 1:
echo   New filename (without extension, Vue is assumed.)

echo. & echo   Creation Date:
echo    Apr-22-2024

echo. & echo   Samples:
echo   %~n0 

exit/b



:_

    .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   
   / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / 
        `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'



:_
:main

call fn app.vue || exit/b

if "%~1" == "" err Destination filename is required.

copy app.vue %1.vue

exit/b



:_
