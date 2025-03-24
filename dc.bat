:_
@echo off

if "%~1" == "?" goto help
if not "%~1" == "" call t %1 || exit/b

goto main



:_
:help

cls

echo. & echo * Double click latest file in current folder. (skw most recent)

echo. & echo   Usage: %~n0 [space separated parameter(s)]

echo. & echo   Parameter 1 (Optional):
echo   td parameter

echo. & echo   Batch file style: Single purpose

echo. & echo   Samples:
echo   %~n0 
echo   %0 bci
echo   %0 fl
echo   %0 ss
echo   %0 tran

exit/b

lu: 
Mar-13-2024



:_

    .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   
   / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / 
        `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'



:_
:main

dir /b /o-d>c:\a\latest-item-results.txt

set /p cbf-latest-item=<c:\a\latest-item-results.txt

echo. & echo * cbf-latest-item: %cbf-latest-item%

"%cbf-latest-item%"

exit/b



:_
