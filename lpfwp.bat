:_

@echo off



:_

set cbf-filep=* Copy the filename to clipboard.

echo.
echo %cbf-filep%



:_

echo. & echo * Route callers.

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto validate_user_input



:_

:help

rem lu: 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Alias of the filename of you wish you want to copy to the clipboard.

echo.
echo %parameter_1%

exit/b



:_

:validate_user_input

call fnv %1

if errorlevel 1 (
  exit/b
)



:_

:main

call m expand_to_filename_without_path %cbf-fn%

echo %cbf-fn_without_path% | clip

echo.
echo * Filename of "%cbf-fn_without_path%" copied to clipboard.

exit/b



:_ (!rfsp) (mov-7)
