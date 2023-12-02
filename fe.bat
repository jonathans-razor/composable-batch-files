:_

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

call el /c>nul

if "%2" == "/c" goto set-filename %*
call paco "%~1" . && goto set-filename %*

goto process-alias %*



:_

:help

echo. & echo * Check for the existence of a file.

echo. & echo   Usage: %0 [space separated parameter(s)]

echo. & echo   Parameter 1: Fliename in current folder or filename alias to check the existence of.

echo. & echo   Parameter 2: If equal to "/c", the filename has no period.

echo. & echo * Return Code: If equal to 0, you know that cbf-fn is a valid file.

exit/b

rem Same line error checking.
rem Caller Code: 
call fe %2 & if errorlevel 1 exit/b

rem skw is_present, if exists, existence check, check_existence, check existence, file_existence, verify existence, single file)

lu:
Dec-1-2023
Apr-28-2023
Sep-26-2019



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:process-alias
rem echo. & echo * Process alias. Dec-1-2023_6_06_PM
call n %1 || exit/b
goto main



:set-filename
rem echo. & echo * Set filename. Dec-1-2023_7_01_PM
set cbf-fn=%cd%\%1
rem echo. & echo cbf-fn: %cbf-fn%
goto main



:main

if exist "%cbf-fn%" (
  rem echo. & echo * File "%cbf-fn%" exists. Jun-28-2023_10_26_PM
  exit/b 0
) else (
  call err * File or folder "%cbf-fn%" DOES NOT exist. Jun-28-2023_10_04_PM
  exit/b 5
)

exit/b



