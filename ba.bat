:_

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto main



:_

:help

echo. & echo * Execute a bash file in a Windows command prompt.

rem lu: 

echo. & echo * Usage: %0
echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo * Parameter 1: Name of the bash script you want to run.

echo. & echo * Batch file style: Single purpose

echo. & echo * Sample(s):

echo. & echo * %0 hw

rem Check database connectivity status.
echo. & echo * %0 db a

exit/b



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:main

gub bash %1 %2 %3

exit/b



:_
