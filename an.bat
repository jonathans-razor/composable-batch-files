:_

@echo off

rem * In order to promote freshness, clear the environment variable.

set cbf-app=

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto validate-input



:_ (!rfsp) (mov-6)

:help

echo. & echo * Validate application alias.
echo. & echo * Notes: This file and 3 others, viz. fn.bat, pn.bat and un.bat are not strictly necessary in that they could all be replaced be calls to nn.bat, nicknames source. However, they are useful in the sense that by calling these, the code is more readable and has more clarity of intent.
echo. & echo * Usage: %0 [single parameter]

exit/b



:_

   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--' 



:_

:validate-input

set cbf-app=

call n %1

if %errorlevel% == 2 (
  exit/b
)

if errorlevel 1 (
  call err Label not found. Jun-28-2021_2_52_PM
  call m clear_errorlevel_silently 
  exit/b 1
)

if not defined cbf-app (
  call err The cbf-app is not defined for "%1". Jun-28-2021_2_53_PM
  exit/b 1
)

if "%cbf-app%" == "microsoft-edge" exit/b 0

if not exist "%cbf-app%" (
  call err The cbf-app "%cbf-app%" could not be found. Jun-28-2021_2_54_PM
  exit/b 1
)



:_ (!efan)
