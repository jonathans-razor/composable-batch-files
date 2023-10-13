:_

@echo off

if "%~1" == "?" goto help
if not "%~1" == "" call n %~1
if not "%~2" == "" call n %~2

goto main



:_

:help

echo. & echo * Run application with or without a parameter.

rem lu: Aug-11-2022

echo.
echo Usage: %0 [Parameter 1] [Parameter 2]

echo.
echo Parameter 1 (Optional): Fully qualified application name, not a nickname.

echo.          
echo Parameter 2 (Optional): Fully qualified parameter name, not a nickname.

echo.
echo Notes: If no parameters are passed, the currently set cbf-app and cbf-Parameter are used.

exit/b



:_

   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--' 



:_

:microsoft_edge_edge_case

set fp=* Use special syntax for Microsoft Edge.

if "%cbf-parameter%" == "" (
  call start "Start Process 1" "%cbf-app%:"
  exit/b
)

call start "Start Process 2" "%cbf-app%:""%cbf-parameter%"

set cbf-app=

exit/b



:_
:run_application_in_raw_format
echo. & echo * cbf-app contains a double dash. Run it raw.
rem This also works so why is this function here?
rem start "my title" "%cbf-app%" 
"%cbf-app%"
exit/b



:_
:run-snowflake-application

rem echo. & echo * VSC requires special formatting.

code "%cbf-parameter%"

exit/b



:_

:main

set fp=* Run application - main function.

if "%cbf-app%" == "microsoft-edge" goto microsoft_edge_edge_case

rem echo Nov-27-2019 4:49 PM

echo %cbf-app% | C:\Windows\System32\find.exe /i "--">nul

if %errorlevel% == 0 (
  goto run_application_in_raw_format
) else (
  call m clear_errorlevel_silently
)

if "%cbf-parameter%" == "" (
  rem echo.
  rem echo * Run application with no parameter. Jun-9-2020_3_20_PM
  call start "Start Process 3" "%cbf-app%"
  exit/b
)

echo %cbf-app% | C:\Windows\System32\find.exe /i "Microsoft VS Code">nul

if %errorlevel% == 0 (
  goto run-snowflake-application
)

rem @echo on
start "Start Process 4" "%cbf-app%" "%cbf-parameter%"

exit/b



:_ (!rfsp) (mov-9)
