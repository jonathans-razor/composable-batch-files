:_
@echo off

if "%~1" == "?" goto help

goto main



:_
:help

cls

echo. & echo * Stock analysis.

echo. & echo   Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1:
echo   x

echo. & echo   Batch file style: Single purpose

echo. & echo * Samples:
echo   %~n0 

exit/b

lu: 
Feb-22-2024



:_

    .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   
   / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / 
        `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'



:_
:main

call sf ap
call sf nv
call sf pbr

exit/b



:_
