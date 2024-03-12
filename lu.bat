:_
@echo off

title CBF: %0

if "%~1" == "?" goto help

goto main



:_
:help

cls

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

cls

echo. & echo * From %0: last updated: Mar-12-2024-11-31-AM
call sdv lu
call n lu

exit/b



:_
