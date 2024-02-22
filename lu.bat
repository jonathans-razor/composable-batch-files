:_
@echo off

title CBF: %0

if "%~1" == "?" goto help

goto main



:_
:help

cls

rem qq
echo. & echo * Display last updated information.

echo. & echo   Usage: %~n0

echo. & echo   Batch file style: Single purpose

echo. & echo * Samples:
echo   %~n0 

exit/b

lu: 
Feb-22-2024-12-21-PM



:_
        .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   
       / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / 
            `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'



:_
:main

echo. & echo * From %0: last updated: Feb-22-2024-12-19-PM
rem qq
call sdv lu
call n lu

exit/b



:_
