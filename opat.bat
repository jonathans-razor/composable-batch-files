:_

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

if "%~1" == "/stat" goto stat

if not "%~1" == "" goto main

goto %1



:_

:help

echo. & echo * Oracle patching functions.

rem lu: Aug-20-2022

echo. & echo * Usage: %0
echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo * Parameter 1: 
echo. & echo * Patch zip filename to run OR
echo. & echo * If equal to "stat", gives the current patch inventory status.

echo. & echo * Batch file style: Single purpose

echo. & echo * Sample(s):
echo. & echo * %0 [blank].zip
echo. & echo * %0 /stat

exit/b



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:stat

echo. & echo * Show current patch status. Note: must be run as administrator.

call C:\Oracle\Middleware\WebLogic\OPatch\opatch.bat lsinventory>%tmp%\%0-stat.txt

call an kr

set cbf-parameter=%tmp%\%0-stat.txt

call r

exit/b

rem lu: Nov-03-2022
rem lu: Aug-24-2022



:_

:main

echo. & echo * Run patch zip file "%1".

call m specific-file-presence *.zip & if errorlevel 1 exit/b

opatch apply %1

exit/b



