@echo off
if "%~1" == "" goto fn
if "%~1" == "?" goto help
goto %1



:help
cls
echo. & echo * Load clipboard multipurpose.

echo. & echo * Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1:
echo   Alias of the function to run.

echo. & echo * Batch file style: Multipurpose

echo. & echo * Sample(s):
echo   %~n0 fn
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
:d
:dtm
:dtt

rem echo. & echo * Date and time. It is easier just to call "dt".

dt

exit/b



:_
:f
:fw
:fwp

echo. & echo * Folder wiothout path.
call m fwp %cd%
clip < %tmp%\fwp.txt

exit/b



:_
:fn
echo. & echo * Copy latest filename to clipboard.

dir /b /o-d>c:\a\python-results.txt

set /p cbf-python-results=<c:\a\python-results.txt

echo %cbf-python-results%|clip

echo. & echo * Code filename "%cbf-python-results%" has been copied to the clipboard.

exit/b

lu:
Nov-14-2023



:_
:le
:py

rem echo. & echo * Copy latest DSA filename to clipboard.

call t d>nul || exit/b

call %0 fn
exit/b



:_
:test
echo. & echo * Test clipboard.
rem clip<c:\a\j1.txt
echo charlie| clip
exit/b



:_
