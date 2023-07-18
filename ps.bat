:_
@echo off

if "%1" == "?" goto help
if not "%~1" == "" goto switch-folder

goto main



:_
:help
echo. & echo * Fully automatic push (a.k.a. g acp) for single repository, with TD parameter.

echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo * Parameter 1 (Optional): Folder to switch to.

echo. & echo * Batch file style: Single purpose

exit/b

rem lu: Sep-08-2022



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

call g acp

exit/b



:_