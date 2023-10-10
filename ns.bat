:_

@echo off
if "%~1" == "?" goto help
call paco "%~1" . && goto use-parameter-1
goto use-alias



:_
:help

cls

echo. & echo  * NSLookup.

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1:
echo    Site you wish to test.

echo. & echo  * Batch file style: Multipurpose

echo. & echo  * Samples:
echo    %~n0 amazon.com

exit/b

lu: 
Sep-26-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:use-parameter-1
echo. & echo * Use parameter 1.
echo.
nslookup "%~1"
exit/b



:_
:use-alias
echo. & echo * Use alias. Not yet implemented.

exit/b



:_
