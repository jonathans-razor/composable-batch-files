:_

@echo off



:_

echo. & echo * Shift parameters.
shift /0

echo. & echo * Set color.
call col velv

if "%~0" == "?" goto help

goto main

exit/b



:_

:help

echo & echo * Multi-edit abstraction layer.

echo. & echo * Usage: rzr (space separated parameters)

echo. & echo * Parameter 1: Batch file to call.

echo. & echo * Parameter 2 (Optional): Parameters to pass to the batch file named in parameter 1.

exit/b

lu:
Dec-18-2023
Jan-16-2019




:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:main

echo. & echo * Rzr batch file's main function.

rem qq
cd\

call %0 %1 %2 %3 %4 %5 %6

echo.
pause

exit



:_
