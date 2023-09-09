:_

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

echo %1| find /i ".">nul

if errorlevel 1 goto process-alias
if "%2"=="/n" goto set-filename %*

goto set-filename %*



:_

:help

echo. & echo * Check for the existence of a file.
echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo * Parameter 1: Fliename in current folder or filename alias to check the existence of.

echo. & echo * Parameter 2: If equal to "/n", the filename has no period.

echo. & echo * Return Code: If equal to 0, you know that %cbf-fn% is a valid file.

exit/b

rem Same line error checking.
rem Caller Code: 
call fe %2 & if errorlevel 1 exit/b

rem skw is_present, if exists, existence check, check_existence, check existence, file_existence, verify existence, single file)

rem lu: Apr-28-2023
rem lu: Sep-26-2019



:_

:process-alias
rem echo. & echo * Process alias.
call n %1>nul
if errorlevel 1 exit/b
goto main



:set-filename
set cbf-fn=%1
rem echo. & echo cbf-fn: %cbf-fn%
goto main



:main
if exist "%cbf-fn%" (
  rem echo. & echo * File "%cbf-fn%" exists. Jun-28-2023_10_26_PM
  exit/b 0
) else (
  call err * File or folder "%cbf-fn%" DOES NOT exist. Jun-28-2023_10_04_PM
  rem echo. & echo * File "%cbf-fn%" DOES NOT exist. Jun-28-2023_10_04_PM
  exit/b 5
)
exit/b



