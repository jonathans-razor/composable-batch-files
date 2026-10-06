:_
@echo off
echo. & echo * Open favorite podcasts.
if "%~1" == "?" goto help
goto main
goto preprocess



:_
:help
cls
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
call j tuca
call j hoyt
call j subs
call j joro
call j bapr
rem qq
call j fiio

exit/b



:_
