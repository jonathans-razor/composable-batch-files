:_

@echo off
title %0

if "%~1" == "?" goto help

goto preprocess



:_
:help

cls

echo. & echo  * Filename guru, used to set cbf-fn.

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1:
echo    If contains period, use current folder filename.

echo. & echo    Batch file style: Multipurpose

echo. & echo  * Samples:
echo    %~n0 

exit/b

lu: 
Nov-15-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:preprocess

call m cel
call i /c>nul

call paco "%~1" . && goto use-current-folder-filename

rem qq

rem Override switches section.
if "%~2" == "/a" (
  call :open-aliased-file %*
  if errorlevel 1 exit/b  
  goto main
)

if "%~2" == "/af" goto open-aliased-folder

:
if "%~2" == "/n" (
  call :open-np-file %*
  goto main
)

:
if "%~2" == "/o" (
  call :open-cbf-batch-file %*
  goto main
)

:
if "%~2" == "/f" (
  call :open-ff-bash-file %*
  if errorlevel 1 exit/b
  goto main
)

:
if "%~2" == "/p" (
  echo. & echo * Error Level: %errorlevel% - qjq - cbf- : %cbf-% - Nov-24-2023_10_55_PM
  call :open-python-file %*
rem qq
  echo. & echo * Error Level: %errorlevel% - qjq - cbf- : %cbf-% - Nov-24-2023_10_56_PM
  if errorlevel 1 exit/b
  echo. & echo * Error Level: %errorlevel% - qjq - cbf- : %cbf-% - Nov-24-2023_10_57_PM
  goto main
)

:
rem Begin routing intelligence section.

if exist "%~1" goto open-current-folder-file

rem Notice that this if clause appears AFTER checking for existence of the file This assumes 
rem that no alias would ever contain a period. (skw contains period)
echo %1| find /i ".">nul && goto open-current-folder-file

if -%~2-==-/c- (
  call :open-current-folder-file %*
  if errorlevel 1 exit/b
  goto main
)

set cbf-fn=

call :open-cbf-batch-file %*

if "%cbf-fn%"=="" (
  call :open-dbf-batch-file %*
)

if "%cbf-fn%"=="" (
  call :open-dbf-bash-file %*
)

if "%cbf-fn%"=="" (
  call :open-aliased-file %*
  rem if errorlevel 1 exit/b
)

if "%cbf-fn%"=="" (
  exit/b
)
goto main



:_
:use-current-folder-filename

call fe "%~1" || exit/b 5

echo. & echo * Use current folder filename.

set cbf-fn=%~1

echo.
call set cbf-fn

exit/b



:_
