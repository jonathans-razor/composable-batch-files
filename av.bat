:_
@echo off

echo. & echo  * Edit App.vue file for passed in alias "%1".

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto main



:_
:help

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1:
echo    Alias of the folder where package.json is located.

echo. & echo    Batch file style: Single purpose

echo. & echo  * Samples:
echo    %~n0 

exit/b

lu: 
Jan-18-2024



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:main

call t %1>nul
cd src

call fe App.vue || exit/b

vc app.vue

exit/b



:_


