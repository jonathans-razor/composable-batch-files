:_
@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

set cbf-fn=

if "%2" == "/c" goto set-filename %*
call paco "%~1" . && goto set-filename %*

goto process-alias %*



:_
:help

echo. & echo * Validate the existence of a file and set cbf-fn.

echo. & echo   Usage: %0 [space separated parameter(s)]

echo. & echo   Parameter 1: Fliename in current folder or filename alias to check the existence of.

echo. & echo   Parameter 2: If equal to "/c", the filename has no period.

echo. & echo * Return Code: If equal to 0, you know that cbf-fn is a valid file.

exit/b

skw:
check_existence
existence check
file_existence
if exists
is_present
verify existence



:_

   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\:::::::
        `--'      `--'      `--'      `--'      `--' 



:_
:process-alias

rem echo. & echo * Process alias. Dec-1-2023_6_06_PM

call sdv %1 || exit/b

goto main



:_
:set-filename

rem echo. & echo * Set filename. Jan-22-2024-0-50-AM

set cbf-fn=%1

goto main



:_
:main

if %cbf-fn% == "" (
  call err From %~nx0: For parameter 1 %1, cbf-fn is not defined. Feb-16-2024-11-12-PM
  exit/b 4
)

if not exist %cbf-fn% (
  call err From %~nx0: For parameter 1 [%1], cbf-fn [%cbf-fn%] does not exist. Feb-16-2024-11-13-PM
  exit/b 3
)

exit/b



:_
