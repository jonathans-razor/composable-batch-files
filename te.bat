:_
@echo off
if "%~1" == "?" goto help
goto %1
goto main
goto preprocess



:_
:help
cls
echo. & echo * 
echo. & echo   Usage: 
echo   %~n0 [space separated parameter(s)]
echo. & echo   Parameter 1:
echo   x
echo. & echo   Creation Date:
echo    May-27-2025
echo. & echo   Samples:
echo   %~n0 
exit/b



:_

    .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   
   / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / 
        `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'



:_
:preprocess



:_
:main

exit/b



:_
