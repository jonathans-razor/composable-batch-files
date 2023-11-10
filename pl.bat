:_

@echo off

if not "%~1" == "" goto switch-folder
if "%~1" == "?" goto help

goto main



:_

:help

echo. & echo * Fully automatic push (a.k.a. g acp) for single repository, with TD parameter.

rem lu: Sep-08-2022

echo. & echo * Usage: %0
echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo * Parameter 1 (Optional): Folder to switch to.

echo. & echo. & echo * Batch file style: Single purpose

echo. & echo * Sample(s):
echo. & echo * 

exit/b



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:switch-folder

rem echo. & echo * Switch folder.

call t %1

if errorlevel 1 exit/b



:_

:main

git pull

exit/b



:_
