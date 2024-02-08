:_
@echo off

if "%~1" == "?" goto help

goto main



:_
:help

cls

rem qq
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

rem Feb-7-2024: new double dictionary code.

if not exist "%cbf-default-sd%" exit/b

call "%cbf-default-sd%" %1 2>nul

rem The alias is found in the secondary dictionary, so exit.
if not errorlevel 1 exit/b

call el /c>nul

call n %1 2>nul
rem qq

if errorlevel 1 err %0.bat: A dictionary entry for "%1" was not found. Feb-7-2024-7-00-PM

exit/b



:_
