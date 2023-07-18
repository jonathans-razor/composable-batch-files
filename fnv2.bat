:_

@echo off


if "%1" == "?" goto help
if "%1" == "" goto help

goto main



:_

:help
cls
echo. & echo * Validate a filename. Version 2.

echo. & echo * Usage: %0 [space separated parameter(s)]
echo. & echo * Parameter 1: Filename alias.

echo. & echo * Batch file style: Single purpose
echo. & echo * Entangled variable: cbf-fn

echo. & echo * Samples:
echo   %~n0 j1

exit/b
rem lu: Oct-6-2022



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:path-exists

if exist "%cbf-fn%" (
  rem echo. & echo * The file "%cbf-fn%" exists.
  exit/b 0
)
exit/b 5

Footnote
>< >< ><

Flow:

The path exists.

The path doesn't exist.

  exit with error

The file exists.

  exit without error

The file doesn't exist.

  exit without error with message

Special case:

  The path exists.

  The file doesn't exist.



:_
:main
set cbf-fn=
call n %1
if errorlevel 1 (
  call err Percent 1 error for p1: "%1". May-15-2023-15-45
  exit/b
)
if not defined cbf-fn (
  call err cbf-fn is not defined for alias "%1". Dec-12-2022-16-24
  exit/b 1
)

call m expand-to-path-only "%cbf-fn%"

rem echo. & echo * cbf-expand-to-path-only-pt: %cbf-expand-to-path-only-pt%

if exist "%cbf-expand-to-path-only-pt%" (
  rem echo. & echo * Path exists.
  goto path-exists
)

echo.
echo * Error: the path for the file cbf-fn: "%cbf-fn%" doesn't exist.

exit/b 1



:_
