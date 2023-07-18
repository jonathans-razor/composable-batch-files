:_

@echo off

set cbf-ax=
set cbf-pt=

if "%~1" == "" goto load-current-folder
if "%~1" == "?" goto help
if "%~1" == "/dp" goto load-dcv-path-only-to-clipboard

goto preprocess



:_
:help
cls

echo. & echo * Load clipboard path.

echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo * Parameter 1 (Optional):
echo   If blank, load current folder path ontol clipboard.
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

call n %1

if errorlevel 1 exit/b

goto main



:_

:load-dcv-path-only-to-clipboard

if -%2-==-?- goto help
if -%2-==-- goto help
if -%3-==-- goto help

call n %2
                                                       
if errorlevel 1 exit/b

call m compose_variable %3>nul

if "%cbf-expanded-variable%" == "" (
  echo. & echo * Error: There is no definition of "cbf-%2" for the alias "%1".
  exit/b
)

call m expand-to-path-only "%cbf-expanded-variable%"

rem echo. & echo cbf-expand-to-path-only-pt: %cbf-expand-to-path-only-pt%

echo %cbf-expand-to-path-only-pt% | clip

echo. & echo * "%cbf-expand-to-path-only-pt%" has been copied to the clipboard.

exit/b

:help

echo. & echo * Load DCV path only to clipboard.

echo. & echo * Parameter Descriptions:
echo. & echo * Parameter 2: Alias
echo. & echo * Parameter 3: DCV

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