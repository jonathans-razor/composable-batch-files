:_
@echo off
if "%~1" == "?" goto help
goto main



:_
:help
echo. & echo * Transform folder to parent folder.
echo. & echo * Usage: %0 [Parameter 1]
echo. & echo * Parameter 1: Path parameter.
echo. & echo * Entangled variable: cbf-tdp.
exit/b



:_
   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--' 



:_
:main
set cbf-tdp=
call m clear_errorlevel_silently
call n %1>nul
if exist "%cbf-tdp%" (
  cd /d %cbf-tdp%
  exit/b
)
call t %1
if %errorlevel% == 0 (
  echo. & echo * Step back Jack.
  cd..
) else (
  exit/b 1
)
exit/b
