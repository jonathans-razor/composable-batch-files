:_
@echo off

title CBF: %0

if "%~1" == "?" goto help

call is-numeric "%~1" && goto use-port-number

goto process-td-parameter

goto main



:_
:help

cls

echo * Surf to a Localhost website.

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1:
echo    If is a number, surf to that port number on localhost.
echo    Else, surf to the port associated with the passed in alias.

echo. & echo    Batch file style: Multipurpose

echo. & echo  * Samples:
echo    %~n0 vue
echo    %~n0 5173

exit/b

lu: 
Jan-18-2024



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:use-port-number

call an br>nul
set cbf-parameter=http://localhost:%1
call r

exit/b



:_
:main

echo. & echo * Main.

fxw %0 %1 %2 %3

exit/b



:_
