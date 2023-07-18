:_

@echo off

if "%~1" == "" goto open-blank-document

echo %1| find /i ".">nul
if %errorlevel% == 0 (
  goto create-in-place-file
)
if "%~1" == "?" goto help

goto validate-input



:_

:help

echo. & echo * Run Excel using an optional filename alias parameter.

echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo * Parameter 1 (Optional): 
echo   If left blank, Excel is opened.
echo   If an alias is provided, cbf-ex is opened.
echo   If cbf-ex is defined but does not exist, a new file will be created.

echo. & echo * Parameter 2 (Optional): 
echo   If a period is used, a new Excel file will be created in the current folder. The P2 filename provided parameter will be used as the filename.

echo. & echo * Batch file style: Single Purpose

echo. & echo * Entangled variable: cbf-ex
exit/b
rem lu: Jun-16-2022




:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:validate-input

set cbf-ex=

call n %1

if errorlevel 1 exit/b

if "%cbf-ex%" == "" (
  echo. & echo * cbf-ex is not defined for "%1". Jul-24-2020_1_19_PM
  exit/b
)

if not exist "%cbf-ex%" (
  goto create-alias-file
)

goto main



:_

:create-alias-file

echo. & echo * Create new Excel file.

call m distill_filename "%cbf-ex%"

call m distill_path "%cbf-ex%"

cd /d "%cbf-distilled_path%"

if errorlevel 1 exit/b

call n bed>nul

copy "%cbf-ex%" "%cbf-distilled_filename%"

set cbf-ex=%cbf-distilled_filename%

goto main



:_

:create-in-place-file
echo. & echo * Create new Excel file in the current folder.
if "%~1" == "" (
  call err The name for the new Excel file is required. Dec-29-2022_2_06_PM
  exit/b
)
if exist "%~1" (
  call err That Excel file already exists. Jan-02-2023-16-40
  exit/b
)
call n bed
copy "%cbf-ex%" "%~1xlsx"
set cbf-ex=%~1xlsx
goto main



:_

:open-blank-document

call fnv bed

if errorlevel 1 exit/b

goto main



:_

:main

call an ex>nul

if errorlevel 1 exit/b

set cbf-parameter=%cbf-ex%

call r

exit/b
