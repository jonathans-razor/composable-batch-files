:_

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto main



:_

:help

echo. & echo * Delete a file based on passed in filename alias (cbf-fn).
echo. & echo * Usage: %0 [space separated parameter(s)]
echo. & echo * Parameter 1: Alias of filename you wish to delete.
echo. & echo * Entangled variable: cbf-fn

exit/b



:_

   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--' 


:_
:main-old
call fnv2 %1
if errorlevel 1 exit/b
del "%cbf-fn%"
exit/b



:_
:main
echo. & echo * Delete aliased file.

call n %1>nul

call fn %cbf-fn% || exit/b

del %cbf-fn%
echo. & echo * File "%cbf-fn%" was deleted.

exit/b

lu:
Dec-1-2023
Apr-13-2023



