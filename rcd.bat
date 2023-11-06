:_

@echo off
if "%~1" == "?" goto help
if "%~1" == "r" goto recall
goto main



:_
:help

cls

echo. & echo  * Remember current directory.

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1:
echo    x

echo. & echo  * Batch file style: Multipurpose

echo. & echo  * Samples:
echo    %~n0 

exit/b

lu: 
Nov-3-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:recall

echo. & echo * Recall current directory.

cd /d "%cbf-current-directory%"

exit/b



:_
:main

set cbf-current-directory=%cd%

exit/b



:_
