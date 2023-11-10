:_
@echo off

if "%~1" == "?" goto help
if "%~1" == "" goto help

goto validate-input



:_

:help

cls

echo. & echo * Simulate a double-click using a default precedence of operation preferences or a dynamically constructed variable.

echo. & echo * Usage: %0 [Parameters]

echo. & echo * Parameter 1: Alias of the cbf that you want to run or "double click" if you will. Think of parameter 1 as the command version of the GUI double-click.
echo. & echo * Parameter 2 (Optional): Dynamically constructed variable you wish to use, which will override the default.

echo. & echo * Pit of Success Strategy: The algorithm will look many different cbf variables to double-click on so you are not restricted to using a single cbf variable for this batch file.

echo. & echo * Entangled variable: cbf-app

echo. & echo * Batch File Style: Single Purpose

echo. & echo * Example(s):
echo   %0 1518 png5
echo   %0 cvtpiv demo
echo   %0 kanb

rem This opens the now playing's jav2 file. Oct-25-2022
echo   %0 np jav2
echo   %0 acc ghmy

exit/b



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:validate-input
rem echo. & echo * Validate input.
echo %1 | c:\windows\system32\find.exe /i ".">nul
if %errorlevel% == 0 (
  echo.
  echo * Error: Aliases do not have periods. Was it necessary to use the "%0" command?
  exit/b
)

rem call m reset_cbf-variables

call i /c>nul
ver>nul

call n %1>nul

if errorlevel 1 exit/b

if not "%~2" == "" goto compose_dcv

goto main



:_

:compose_dcv

call m compose_variable %2

if "%cbf-expanded-variable%" == "" (
  call err For the alias "%1", there is no definition of "cbf-%2". Nov-01-2022-21-06
  exit/b
)

call dc "%cbf-expanded-variable%"

exit/b



:_
:create_new_excel_file
echo. & echo * Create new Excel file.
call m distill_filename "%cbf-ex%"
call m distill_path "%cbf-ex%"
cd /d "%cbf-distilled_path%"
call cp fc bed "%cbf-distilled_filename%"
"%cbf-distilled_filename%"
exit/b



:_
:create_new_word_file
echo. & echo * Create new Word file.
call m distill_filename "%cbf-wo%"
call m distill_path "%cbf-wo%"
cd /d "%cbf-distilled_path%"
call cp fc bwd "%cbf-distilled_filename%"
"%cbf-distilled_filename%"
exit/b



:_

:main

rem echo. & echo * Execute a function based on the following order of operations. Nov-10-2023_12_18_PM



:_

if not "%cbf-lnk%" == "" (
  if exist "%cbf-lnk%" (
    call dc "%cbf-lnk%"
    exit/b
  )
)



:_

if not "%cbf-url%" == "" (
  echo. & echo * Execute URL. Sep-19-2023_2_44_PM
  call sf %1>nul
  exit/b
)



:_

if not "%cbf-gd%" == "" (
  rem echo. & echo * cbf-gd is non-blank. Aug-23-2023_1_53_PM
  call fxw gd %1 %2 %3
  exit/b
)



:_

if not "%cbf-gs%" == "" (
  rem echo. & echo * cbf-gs is non-blank. Aug-23-2023_1_53_PM
  call fxw gs %1 %2 %3
  exit/b
)



:_ 

rem Note: This code block needs to be below the URL code block. Sep-19-2023
if not "%cbf-app%" == "" (
  echo. & echo * Run an application. {cbf-app is non-blank. Aug-29-2023_11_59_AM}
  call r
  exit/b
)



:_

if not "%cbf-wo%" == "" (
  if exist "%cbf-wo%" (
    set cbf-fn=%cbf-wo%
    call m double_click
    call r
    exit/b
  ) else (
    echo.
    echo * Could not find the file "%cbf-wo%" so create it.
    goto create_new_word_file
    exit/b
  )
)



:_

if not "%cbf-ex%" == "" (
  if exist "%cbf-ex%" (
    rem echo.
    rem echo * Double click Excel file "%cbf-ex%".
    set cbf-fn=%cbf-ex%
    call m double_click
    call r
    exit/b
  ) else (
    echo.
    echo * Could not find the file "%cbf-ex%" so create it.
    goto create_new_excel_file
    exit/b
  )
)



:_

if not "%cbf-pptx%" == "" (
  if exist "%cbf-pptx%" (
    rem echo.
    rem echo * Double click Powerpoint file "%cbf-pptx%".
    set cbf-fn=%cbf-pptx%
    call m double_click
    call r
    exit/b
  )
)



:_

if not "%cbf-fn%" == "" (
  if exist "%cbf-fn%" (
    rem echo.
    rem echo * File exists cbf-fn: %cbf-fn%.
    call xfn %1>nul
    exit/b
  ) else (
    echo.
    echo * Error: File "%cbf-fn%" does not exist.
    exit/b
  )
)



:_

if not "%cbf-png%" == "" (
  if exist "%cbf-png%" (
    call dc "%cbf-png%"
    exit/b
  )
)



:_

if not "%cbf-pt%" == "" (
  if exist "%cbf-pt%" (
    echo. & echo * Go to path. Aug-15-2021_8_41_PM
    call t %1
  )
)



:_

if not "%cbf-gh%" == "" (
  call sf %1>nul
  exit/b
)



:_

if not "%cbf-cf%" == "" (
  call sf %1>nul
  exit/b
)



:_

if not "%cbf-demo%" == "" (
  call demo %1>nul
  exit/b
)



:_

if not "%cbf-ji%" == "" (
  call ji %1>nul
  exit/b
)



:_

echo.
echo * Error: Could not find an executable CBF parameter.
exit/b



:_
