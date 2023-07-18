:_

@echo off

if "%~1" == "" goto open-blank-document

echo %1| find /i ".">nul
if %errorlevel% == 0 (
  goto open-or-create-in-place-file
)

if "%~1" == "?" goto help

goto validate-input



:_

:help

echo. & echo * Run Word using an optional filename alias parameter.

rem lu: Jun-16-2022

echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo   Parameter 1 (Optional): 
echo   If left blank, Word is opened.
echo   If an alias is provided, cbf-wo is opened for the provided alias. If cbf-wo is defined but does not exist, a new file will be created.
echo   If a period is used, the file provided will be opened if it exists. Or else a new file will be created in the current folder.

echo. & echo * Batch file style: Single Purpose

echo. & echo * Entangled variable: cbf-wo

exit/b



:_

   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--' 




:_

:validate-input

set cbf-wo=

call n %1

if errorlevel 1 exit/b

if "%cbf-wo%" == "" (
  echo. & echo * cbf-wo is not defined for "%1". Jul-10-2020_12_54_PM
  exit/b
)

if not exist "%cbf-wo%" (
  goto create-alias-file
)

goto main



:_

:create-alias-file

echo. & echo * Create new Word file.

call m distill_filename "%cbf-wo%"

call m distill_path "%cbf-wo%"

cd /d "%cbf-distilled_path%"

if errorlevel 1 exit/b

call n bwd>nul

copy "%cbf-wo%" "%cbf-distilled_filename%"

set cbf-wo=%cbf-distilled_filename%

goto main



:_
:open-or-create-in-place-file
if exist "%~1" (
rem qq
  echo. & echo * Open existing file. Apr-16-2023_7_58_PM - %0.bat
  set cbf-wo=%1
  goto main
)
echo. & echo * Create new Word file in the current folder.
call n bwd
copy "%cbf-wo%" "%~1docx"
set cbf-wo=%~1docx
goto main



:_
:open-blank-document
call n bwd
if errorlevel 1 exit/b
goto main



:_
:main
call an wo>nul
if errorlevel 1 exit/b
set cbf-parameter=%cbf-wo%
call r
exit/b



