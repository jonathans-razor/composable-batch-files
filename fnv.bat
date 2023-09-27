:_

@echo off

set cbf-filep=* Validate a filename value. Using fn instead of n helps the reader with clarity of intent.

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto validate-input



:_

:help

echo.
echo %cbf-filep%                         

set parameter_1=Parameter 1: Alias of the filename you are trying to set. This function tries ^
to return an existing ASCII file only.

echo.
echo %parameter_1%

echo.
echo Batch file style: Single Purpose

echo.
echo Entangled variable: cbf-fn

exit/b



:_

   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--' 



:_

:validate-input

set fp=* Validate if a file is defined and exists.

set cbf-fn=

call n %1

if errorlevel 1 exit/b

if defined cbf-fn (
  rem echo.
  rem echo * cbf-fn file is defined. {%cbf-fn%}
  if exist "%cbf-fn%" (
    rem echo.
    rem echo * cbf-fn file exists.
    goto file_exists
  )
)

if defined cbf-jf (
  if exist "%cbf-jf%" (
    set cbf-fn=%cbf-jf%
    goto file_exists
  )
)

if defined cbf-java (
  if exist "%cbf-java%" (
    set cbf-fn=%cbf-java%
    goto file_exists
  )
)

if not defined cbf-fn (
  call err cbf-fn file is NOT defined. Dec-8-2021_2_13_PM - %0.bat
  exit/b 4
)

call err File doesn't exist. {%cbf-fn%} Dec-8-2021_1_37_PM - %0.bat

exit/b 2



:_

:file_exists

set fp=* File exists. {%cbf-fn%}

rem echo.
rem echo %fp%

exit/b



:_
