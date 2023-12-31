:_

@echo off

if "%~1" == "?" goto help
if "%~1" == "d" goto copy-date-to-clipboard
if "%~1" == "t" goto copy-time-to-clipboard

goto copy-date-and-time-to-clipboard



:_

:help
cls
echo. & echo * Date functions.

echo. & echo * Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1 (Optional):
echo   If left blank, copy date and time to clipboard.
echo   d: Copy date to clipboard.
echo   t: Copy time to clipboard.

echo. & echo * Batch file style: Multipurpose

echo. & echo * Samples:
echo   %~n0 
echo   %~n0 d
echo   %~n0 t

exit/b

skw: format date and time, formatting date and time, format time, formatting time



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:copy-time-to-clipboard-old

echo.
set cbf-hours=%time:~0,2%

rem echo cbf-hours: %cbf-hours%
if "%cbf-hours%" == " 0" set cbf-hours=12
rem echo cbf-hours: %cbf-hours%

set cbf-minutes=%time:~3,2%
set cbf-time=%cbf-hours%-%time:~3,2%

echo * cbf-time: %cbf-time%

call n time>nul
echo %cbf-time%>%cbf-fn%
clip < "%cbf-fn%"
echo. & echo * Copy current time to clipboard. (%cbf-time%)
exit/b



:_
:copy-time-to-clipboard

echo. & echo * Copy time to clipboard.

call pn d>nul

python %cbf-pt%\time.py>time.txt
set /p cbf-time=<time.txt

echo. & echo * cbf-time: %cbf-time%

clip < "time.txt"

exit/b



:_
:copy-date-to-clipboard

set cbf-month=%date:~4,2%

if "%cbf-month%"=="01" set cbf-month=Jan
if "%cbf-month%"=="02" set cbf-month=Feb
if "%cbf-month%"=="03" set cbf-month=Mar
if "%cbf-month%"=="04" set cbf-month=Apr
if "%cbf-month%"=="05" set cbf-month=May
if "%cbf-month%"=="06" set cbf-month=Jun
if "%cbf-month%"=="07" set cbf-month=Jul
if "%cbf-month%"=="08" set cbf-month=Aug
if "%cbf-month%"=="09" set cbf-month=Sep
if "%cbf-month%"=="10" set cbf-month=Oct
if "%cbf-month%"=="11" set cbf-month=Nov
if "%cbf-month%"=="12" set cbf-month=Dec
rem echo. & echo %cbf-month%

set cbf-day=%date:~7,2%
rem echo. & echo %cbf-day%

set cbf-year=%date:~10,4%
rem echo. & echo %cbf-year%

set cbf-date=%cbf-month%-%cbf-day%-%cbf-year%
rem echo. & echo %cbf-consolidated-date%

call n date>nul
echo %cbf-date%>%cbf-fn%
clip < "%cbf-fn%"
echo. & echo * Copy current date to clipboard (%cbf-date%).
exit/b



:_
:copy-date-and-time-to-clipboard

call :copy-date-to-clipboard>nul
call :copy-time-to-clipboard>nul
call n dtt>nul
set cbf-date-and-time=%cbf-date%-%cbf-time%
echo %cbf-date-and-time%>%cbf-fn%
clip < "%cbf-fn%"
echo. & echo * Copy current date and time to clipboard. (%cbf-date-and-time%)
exit/b



:_
