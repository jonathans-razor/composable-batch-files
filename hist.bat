:_

@echo off

if "%~1" == "?" goto help
if "%~1" == "" goto main

goto grep-on-percent-1



:_

:help

echo. & echo * History command.
echo. & echo * Usage: %0
echo. & echo * Parameter 1:
echo. & echo * The value you wish to grep on.

exit/b

rem creation date: Oct-11-2022



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:grep-on-percent-1

doskey /history | grep %1

exit/b


:_

:main

doskey /history

exit/b



:_