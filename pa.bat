:_

@echo off
if "%~1" == "?" goto help
goto main



:_
:help
cls
echo. & echo * Push selected repositories.

echo. & echo   Usage: %~n0 [space separated parameter(s)]

echo. & echo   Batch file style: Single purpose

echo. & echo   Samples:
echo   %~n0 

exit/b

rem creation date: Sep-20-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:main

call p c
echo |-|°_|-|°_|-|°_|-|°_|-|°_|-|°_|-|°_|-|°_|-|°_|-|°_|-|°_|-|°_|-|°_|-|°_|-|°_|-|°_|-|°_|-|°
call p iw
echo |-|°_|-|°_|-|°_|-|°_|-|°_|-|°_|-|°_|-|°_|-|°_|-|°_|-|°_|-|°_|-|°_|-|°_|-|°_|-|°_|-|°_|-|°
call p ql

exit/b



:_
