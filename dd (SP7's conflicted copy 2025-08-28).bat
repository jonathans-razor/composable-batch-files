:_
@echo off
if "%~1" == "" goto help
if "%~1" == "?" goto help
goto preprocess



:_
:help
cls
echo. & echo * Dir wit TD parameter.
echo. & echo   Usage: 
echo   %~n0 [space separated parameter(s)]
echo. & echo   Parameter 1:
echo   Label of the folder you wish to go to.
echo. & echo   Creation Date:
echo    Mar-11-2025
echo. & echo   Samples:
echo   %~n0  ro
exit/b



:_

    .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   
   / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / 
        `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'



:_
:preprocess
call t %1



:_
:main
d



:_
