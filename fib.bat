:_
@echo off

if "%~1" == "?" goto help

goto main



:_
:help

cls

echo. & echo * Generate Fibonacci numbers.

echo. & echo   Usage: %~n0 [space separated parameter(s)]

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
:preprocess



exit/b



:_
:main

cls

echo. & echo * Fibonacci numbers (first 20).

echo.
call t c>nul
node fibonacci.js

exit/b



:_
