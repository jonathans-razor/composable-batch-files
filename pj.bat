:_
@echo off

echo. & echo  * Edit package.json.

if "%~1" == "" goto main
if "%~1" == "?" goto help

goto preprocess



:_
:help

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1:
echo    Alias of the folder where package.json is located.
echo    If left blank, package.json is assumed to be in the current folder.

echo. & echo    Batch file style: Single purpose

echo. & echo  * Samples:
echo    %~n0 
echo    %~n0 ve1

exit/b

lu:
Feb-6-2024
Jan-18-2024



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:preprocess

call t %1>nul || exit/b



:_
:main

call fn package.json || exit/b

vc package.json

exit/b



:_
