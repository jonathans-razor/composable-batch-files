:_

@echo off



:_

set cbf-filep=* Reopen or see search results that have been piped to a file.



:_

echo. & echo * Route callers.

if "%~1" == "" goto help

if "%~1" == "?" goto help

goto main



:_

:help

echo.
echo %cbf-filep%

rem lu: 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Batch file name the the search results you wish to view.

echo.
echo %parameter_1%

echo.
echo Batch file style: Single task

echo.
echo Examples:

echo.
echo %0 cs

exit/b



:_

  __)_  (__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__ 
 (____  ___)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______



:_

:main

set cbf-parameter=%temp%\search_results_%1.txt

call an me

call r

exit/b



:_ (!rfsp) (mov-7)
