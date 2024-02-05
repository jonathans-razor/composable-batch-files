@echo off
if "%~1" == "?" goto help
if "%~1" == "r" goto remember-current-folder

goto recall



:_
:help

cls

echo. & echo  * Remember or recall previous folder.

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1:
echo      If equal to r, remember current folder.

echo. & echo    Batch file style: Multipurpose

echo. & echo  * Samples:
echo      %~n0 
echo      %~n0  r

exit/b

lu: 
Nov-3-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:recall

echo. & echo * Recall previous folder.

cd /d "%cbf-current-directory%"

exit/b



:_
:remember-current-folder

rem echo. & echo Remember current folder.

set cbf-current-directory=%cd%

exit/b



:_
