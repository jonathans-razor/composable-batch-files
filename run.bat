:_
@echo off

title CBF: %0

if "%~1" == "?" goto help
if not "%~1" == "" call t %1

goto main



:_
:help

cls

echo. & echo * Run.

echo. & echo   Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1:
echo   td parameter.

echo. & echo   Batch file style: Single purpose

echo. & echo * Samples:
echo   %~n0 pina

exit/b

lu: 
Feb-22-2024



:_
        .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   
       / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / 
            `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'



:_
:main

call fn run.bat || goto use-cbf-configuration

run

exit/b



:use-cbf-configuration

echo. & echo * Use CBF configuration.

rem call n
rem cbf-port
rem cbf-server-word

exit/b



:_
