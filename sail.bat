:_
@echo off

if "%~1" == "?" goto help

goto main



:_
:help

echo. & echo * Draws a notice graphic with a message.

echo. & echo * Usage: %0

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
