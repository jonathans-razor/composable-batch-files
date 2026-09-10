:_
@echo off

title CBF: %0

if "%~1" == "" goto read
if "%~1" == "?" goto help
if "%~1" == "l" goto read-log

goto write



:_
:help

cls

echo. & echo * Display last updated information.

echo. & echo   Parameter 1
echo   If blank, read last-updated.txt.
echo   Else, write last-updated.txt with the current date and time.

echo. & echo   Batch file style: Single purpose

echo. & echo   Samples:
echo   %~n0 
echo   %~n0 w

exit/b

lu: 
 Sep-8-2026-8-06-PM
Apr-11-2024-1-58-PM



:_
        .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   
       / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / 
            `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'



:_
:read
cls
echo. & echo * Read last updated.
call t c>nul
echo.
type last-updated.txt
exit/b



:_
:read-log
cls
echo. & echo * Read last updated log.
call t c>nul
echo.
type last-updated-log.txt
exit/b



:_
:write
cls
echo. & echo * Write last updated.
call t c>nul
call dt>nul
type %cbf-fn%>last-updated.txt
echo From Computer: %computername%>>last-updated.txt

echo.>>last-updated-log.txt
type %cbf-fn%>>last-updated-log.txt
echo From Computer: %computername%>>last-updated-log.txt
echo.
type last-updated.txt
exit/b



:_
