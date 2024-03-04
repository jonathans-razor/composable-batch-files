@echo off
if "%~1" == "" goto help
if "%~1" == "?" goto help
goto %1



:help
cls
echo. & echo * Load clipboard multipurpose.

echo. & echo * Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1:
echo   Alias of the text you wish to load.

echo. & echo * Batch file style: Multipurpose

echo. & echo * Sample(s):
echo   %~n0 ga

exit/b

rem creation date: Apr-19-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:ga

echo. & echo * Gettysburg address.
call pn cbf>nul
clip < %cbf-pt%\gettysburg-address.txt

exit/b



:_
:dtt

echo. & echo * Date and time.

call ujt
clip < %tmp%\java_timestamp.txt

exit/b



:_
:fw
:fwp

echo. & echo * Folder wiothout path.
call m fwp %cd%
rem qq
clip < %tmp%\fwp.txt

exit/b



:_
