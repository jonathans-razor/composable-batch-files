:_

@echo off

if "%~1" == "?" goto help
if "%~1" == "" goto main

goto %1



:_

:help

echo. & echo * Clean up and start WebLogic.

rem lu: Aug-30-2022

echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo * Parameter 1 (Optional): Alias to run. If left blank, WebLogic is started.

echo. & echo * Batch file style: Multi-purpose.

exit/b



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:main

call de wl

rem echo. & echo * Debug-me cbf-: %cbf-% EL: %errorlevel% - Oct-21-2022-11-25
call j wl
rem echo. & echo * Debug-me cbf-: %cbf-% EL: %errorlevel% - Oct-21-2022-11-26

call lh wl

exit/b



:_

:stop

call t wl>nul

@echo on
stopWeblogic.cmd

exit/b



:_
