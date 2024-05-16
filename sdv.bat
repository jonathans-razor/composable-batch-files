:_
@echo off

if "%~1" == "?" goto help

goto main



:_
:help

cls

echo. & echo  * Set dictionary value.

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1:
echo    Alias of the dictinary value you wish to set.

echo. & echo    Batch file style: Single purpose

echo. & echo  * Samples:
echo    %~n0 zz1

exit/b

lu: 
Feb-7-2024



:_
        .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   
       / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / 
            `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'



:_
:main

rem echo. & echo * New double dictionary code. The local dictionary overwites the primary dictionary.

echo. & echo * Error Level: %errorlevel% - qjq - cbf-: %cbf-% - May-16-2024-1-06-PM-5
if not exist "%cbf-default-sd%" exit/b

call el /c>nul

call "%cbf-default-sd%" %1 2>nul

rem The alias is found in the secondary dictionary, so exit. We are half-expecting an error.
if not errorlevel 1 exit/b

call n %1 || err %0.bat: May-8-2024-3-19-PM

exit/b



:_
