:_

@echo off
title %0

if "%~1" == "?" goto help

goto %1



:_
:help

cls

echo. & echo  * 

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1:
echo      x

echo. & echo    Batch file style: Multipurpose

echo. & echo  * Samples:
echo      %~n0 

exit/b

lu: 
Nov-15-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:

exit/b



:_
