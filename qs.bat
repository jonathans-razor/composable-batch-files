:_
@echo off

title CBF: %0

if "%~1" == "?" goto help

goto %1



:_
:help

cls

echo. & echo * Quasar.

echo. & echo   Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1:
echo   x

echo. & echo   Batch file style: Multipurpose
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
:v
:vers

echo.
quasar -v

exit/b

Apr-9-2024 @quasar/cli v2.4.0
Apr-9-2024 @quasar/cli v2.3.0



:_
:cr
echo. & echo * Create Quasar project.
quasar create expansion-item-demo
exit/b



:_
:main

exit/b



:_
