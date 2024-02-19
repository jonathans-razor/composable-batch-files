:_

@echo off



:_

set cbf-filep=* Run PowerPoint.



:_

echo. & echo * Route callers.

if "%~1" == "" goto use_blank_document

if "%~1" == "?" goto help

goto validate-input



:_

:help

echo.
echo %cbf-filep%

rem lu: Aug-31-2020

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): Filename alias to run. This file will try to open ^
the cbf-%0 first, and if that is not found, it will try to open the ^
cbf-fn. If left blank, PowerPoint is opened.

echo.
echo %parameter_1%

echo.
echo Batch file style: Single Purpose

echo.
echo Entangled variable: cbf-%0

exit/b



:_

   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--' 



:_

:validate-input

set cbf-ppt=
set cbf-%1=

call n %1

if errorlevel 1 exit/b

if "%cbf-ppt%" == "" (
  echo.
  echo * cbf-ppt is not defined for "%1". Jul-24-2020_1_20_PM
  goto try_using_cbf-fn
)

set cbf-fn=%cbf-ppt%

if not exist "%cbf-ppt%" (
  goto create-file
)

goto main



:_

:create-file

echo. & echo * Create new PowerPoint file.

call m distill_filename "%cbf-ppt%"

call m distill_path "%cbf-ppt%"

cd /d "%cbf-distilled_path%"

if errorlevel 1 exit/b

call n bpd

copy "%cbf-ppt%" "%cbf-distilled_filename%"

set cbf-ppt=%cbf-distilled_filename%

goto main



:try_using_cbf-fn

call fn %1>nul

if errorlevel 1 exit/b

echo %cbf-ppt% | find /i "xlsx">nul

if not %errorlevel% == 0 (
  echo.
  echo * cbf-fn does not contain an xlsx document. Aug-24-2020_11_03_AM
  exit/b
)

goto main



:_

:use_blank_document

call fn bpd

if errorlevel 1 exit/b

goto main



:_

:main

call an pp

set cbf-parameter=%cbf-ppt%

if errorlevel 1 exit/b

call r

exit/b



:_ (!rfsp) (mov-7)
