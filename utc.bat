:_

@echo off

if "%~1" == "" goto help
if "%~2" == "" goto help
if "%~1" == "?" goto help

goto main



:_

:help

echo. & echo * Convert UTC to EST.

echo. & echo * Usage: %0

echo. & echo * Parameter 1: Time you wish to convert.

echo. & echo * Parameter 2: AM or PM.

echo. & echo * Sample(s):

echo. & echo * %0 7:10 PM

exit/b

rem creation date: 
rem lu: 


:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:main

call q %1 %2 UTC EST

exit/b



:_