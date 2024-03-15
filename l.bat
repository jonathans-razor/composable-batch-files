:_

@echo off

set cbf-ax=
set cbf-pt=

if "%~1" == "" goto load-current-folder
if "%~1" == "?" goto help
if "%~1" == "/n" goto loads-the-current-folder-with-no-path-onto-the-clipboard

goto preprocess



:_
:help
cls

echo. & echo * Load path onto clipboard.

echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo * Parameter 1 (Optional):
echo   If blank, load current folder path onto clipboard.
echo   If alias, load alias' path to clipboard.
echo   If equals /dp, load DCV path only to clipboard.

echo. & echo * Batch file style: Single purpose.

exit/b



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:preprocess

rem echo. & echo * Preprocess.

call sdv %1

if errorlevel 1 exit/b

goto main



:_

:loads-the-current-folder-with-no-path-onto-the-clipboard

call m distill-file-folder %cd%

echo %cbf-distilled-file-folder%| clip

echo. & echo * Load current folder "%cbf-distilled-file-folder%" (path was removed) onto the clipboard.

exit/b



:_

:load-current-folder

echo. & echo * Load current folder path onto clipboard.

echo %cd%| clip
echo. & echo * "%cd%" has been loaded onto the clipboard.

exit/b



:_

:main

echo. & echo * Load alias path or ax onto clipboard.

if not "%cbf-pt%" == "" (
  echo %cbf-pt%| clip
  echo. & echo * cbf-pt "%cbf-pt%" has been loaded onto the clipboard.
) else if not "%cbf-ax%" == "" (
  echo "%cbf-ax%"| clip
  echo. & echo * cbf-ax "%cbf-ax%" has been loaded onto the clipboard.
) else (
  echo. & echo * Error: cbf-pt not found for alias "%1".
)

exit/b



:_
