:_

@echo off
if "%~1" == "?" goto help
if "%~1" == "" goto help
goto main



:_
:help
cls
echo. & echo * Node. Compile and run javascript.

echo. & echo * Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1: The javascript file you wish to compile and run.
echo  

echo. & echo * Batch file style: Multipurpose

echo. & echo * Samples:
echo   %~n0 

exit/b

rem creation date: 



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:main

node %1

exit/b



:_
