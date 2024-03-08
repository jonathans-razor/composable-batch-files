:_
@echo off

if "%~1" == "?" goto help

goto main



:_
:help

echo. & echo * Show the success sailor with a passed in message.

echo. & echo   Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1 (Optional):
echo   Message to display. 

echo. & echo   Batch file style: Single purpose

echo. & echo * Samples:
echo   %~n0 You made it!

exit/b



:_

    .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   
   / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / 
        `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'



:_
:main

rem echo. & echo * Show ASCII art sailboat.
call n ascii-art-sailboat>nul
type %cbf-message-graphic%
echo. & echo   Now we're talking! %*

exit/b 1



:_
