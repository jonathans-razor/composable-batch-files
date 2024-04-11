:_
@echo off

title CBF: %0

if "%~1" == "" goto read
if "%~1" == "?" goto help

goto write



:_
:help

cls

echo. & echo * Display last updated information.

echo. & echo   Parameter 1
echo   If blank, read last-updated.txt.
echo   else, write last-updated.txt with the current date and time.

echo. & echo   Batch file style: Single purpose

echo. & echo * Samples:
echo   %~n0 
echo   %~n0 w

exit/b

lu: 
 Apr-11-2024-1-58-PM



:_
        .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   
       / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / 
            `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'



:_
:old

cls

echo. & echo * Last updated.

rem call sdv lu
rem call n lu

exit/b



:_
:read

cls

echo. & echo * Read last updated.

call t c>nul
echo.
type last-updated.txt

exit/b



:_
:write

cls

echo. & echo * Write last updated.

call t c>nul
call dt>nul
type %cbf-fn%>last-updated.txt
echo.
type last-updated.txt

exit/b



:_
