:_

@echo off



:_

set cbf-filep=* Edit a relative-path constucted filename.

echo.
echo %cbf-filep%



:_

echo. & echo * Route callers.

if "%~1" == "?" goto help

if "%~1" == "" goto help

if "%~2" == "" goto help

goto validate-input



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Path alias.

set parameter_2=Parameter 2: Filename with path alias.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

echo.
echo Example 1: edr ma jwt

echo.
echo Example 2: edr 1232 jwt

echo.
echo Example 3: edr caco cvn

echo.
echo Example 4: edr amco cvn

exit/b



:_

:validate-input



:_

:validate_path

set cbf-relative_path=

call pn %1

if %errorlevel% == 1 (
  echo.
  echo * Error: Label not found. Oct-26-2019 11:02 AM
  call m clear_errorlevel_silently 
  exit/b
)

if not exist "%cbf-pt%" (
  echo.
  echo * Error: Path "%cbf-pt%" not found. Oct-30-2019 6:17 PM
  call m clear_errorlevel_silently 
  exit/b
)

set cbf-built_path=%cbf-pt%

call n %2

if %errorlevel% == 1 (
  echo.
  echo * Error: Label not found. Oct-30-2019 6:27 PM
  call m clear_errorlevel_silently 
  exit/b
)

set cbf-built_path=%cbf-built_path%\%cbf-relative_path%

if not exist "%cbf-built_path%" (
  echo.
  echo * Error: Path "%cbf-built_path%" not found. Oct-30-2019 6:289 PM
  call m clear_errorlevel_silently 
  exit/b
)



:_

:validate_filename

set cbf-fn_without_path=

call fn %2

if %errorlevel% == 1 (
  echo.
  echo * Oct-17-2019 5:35 PM
  call m clear_errorlevel_silently 
  exit/b 1
)

set cbf-built_filename=%cbf-built_path%\%cbf-fn_without_path%

if not exist "%cbf-built_filename%" (
  echo.
  echo * Error: The filename "%cbf-built_filename%" could not be found.
  exit/b 1
)



:_

:main

call e "%cbf-built_filename%"

exit/b



:_ (!rfsp) (mov-7)
