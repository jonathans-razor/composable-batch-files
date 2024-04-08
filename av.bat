:_
@echo off

echo. & echo * Edit App.vue file.

if "%~1" == "" goto main
if "%~1" == "?" goto help

goto process-td-parameter



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
:process-td-parameter

call t %1>nul || err Apr-8-2024-4-46-PM

cd src



:_
:main

rem qq
call fn App.vue || err Apr-8-2024-4-45-PM

vc App.vue>nul

exit/b



:_
