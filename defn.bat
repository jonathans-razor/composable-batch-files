:_

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto main



:_

:help

echo. & echo * Delete a file based on passed in filename alias (cbf-fn).
echo. & echo * Usage: %0 [space separated parameter(s)]
echo. & echo * Parameter 1: Alias of filename you wish to delete.
echo. & echo * Entangled variable: cbf-fn

exit/b



:_

   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--' 


:_
:main-old
call fnv2 %1
if errorlevel 1 exit/b
del "%cbf-fn%"
exit/b



:_
:main
echo. & echo * Delete aliased file.

call n %1

call fe %cbf-fn%>nul

if errorlevel 1 (
  call err No file to delete because "%cbf-fn%" doesn't exist.
  exit/b
)

echo. & echo * Deleted file: "%cbf-fn".
del %cbf-fn%

exit/b

rem Apr-13-2023



