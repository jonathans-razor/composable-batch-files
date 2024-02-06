:_
@echo off

echo. & echo  * Edit App.vue file.

if "%~1" == "" goto main
if "%~1" == "?" goto help

goto preprocess



:_
:help

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1:
echo    Alias of the folder where package.json is located.
echo    If left blank, App.vue is assumed to be in the current fulder.

echo. & echo    Batch file style: Single purpose

echo. & echo  * Samples:
echo    %~n0 

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

call t %1



:_
:main

cd src

call fe App.vue || exit/b

vc app.vue

exit/b



:_
