:_

@echo off

title CBF: %0


if "%~1" == "?" goto help

goto preprocess



:_
:help

cls

echo. & echo * Set cbf-fn based on an algorithm.

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1:
echo    If period, use current folder filename.
echo    Else, use algorithm same as e.bat.

echo. & echo    Batch file style: Multipurpose

echo. & echo  * Samples:
echo    %~n0 j1.txt

exit/b

lu: 
Dec-1-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:preprocess

call el /c>nul
call i /c>nul

rem Override switches section.

rem qq

:
if "%~2" == "/c" (
  call :open-current-folder-file %*
  if errorlevel 1 exit/b  
  goto main
)

:
if "%~2" == "/a" (
  call :open-aliased-file %*
  if errorlevel 1 exit/b  
  goto main
)

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
  call :open-python-file %*
  if errorlevel 1 exit/b
  goto main
)

:
rem Begin routing intelligence section.


call paco %~1 . && goto use-current-folder-filename
rem call paco "%~1" /d && goto use-dcv

call :open-cbf-batch-file %*

if "%cbf-fn%"=="" (
  call :open-dbf-batch-file %*
)

if "%cbf-fn%"=="" (
  call :open-dbf-bash-file %*
)

if "%cbf-fn%"=="" (
  call :open-aliased-file %*
)

if "%cbf-fn%"=="" (
  exit/b
)
goto main



:_
:open-current-folder
echo. & echo * Open current folder.
code .
exit/b



:_
:open-current-folder-file
echo. & echo * Open current folder file.

call fe %* || exit/b 5
set cbf-fn=%~1
goto main %*



:_
:open-cbf-batch-file

call pn cbf>nul

if exist "%cbf-pt%\%1.bat" (
  echo. & echo * Open CBF batch file.
  rem echo. & echo OCBF: "%cbf-pt%\%1.bat"
) else (
  rem echo. & echo * CBF batch file: "%cbf-pt%\%1.bat" NOT found.
  exit/b 5
)

set cbf-fn=%cbf-pt%\%1.bat
rem echo. & echo Cbf: %cbf-fn%

exit/b



:_
:open-ff-bash-file
call pn f>nul
if exist "%cbf-pt%\%1.sh" (
  echo. & echo * Open FF bash file.
  rem echo. & echo * "%1" exists.
) else (
  rem echo. & echo * FF bash file: "%cbf-pt%\%1" NOT found.
  exit/b 5
)
set cbf-fn=%cbf-pt%\%1.sh
exit/b



:_
:open-python-file
call pn d>nul
rem echo. & echo * Open Python file. Nov-24-2023_11_37_PM
if exist "%cbf-pt%\%1.py" (
  echo. & echo * Open Python file. Nov-24-2023_11_38_PM
  rem echo. & echo * "%cbf-pt%\%1.py" exists.
) else (
  echo. & echo * Python file: "%cbf-pt%\%1" NOT found.
  exit/b 5
)
set cbf-fn=%cbf-pt%\%1.py
exit/b



:_
:open-dbf-bash-file
call pn dbf>nul
if exist "%cbf-pt%\%1" (
  echo. & echo * Open DBF bash file.
  rem echo. & echo * "%1" exists.
) else (
  rem echo. & echo * DBF bash file: "%cbf-pt%\%1" NOT found.
  exit/b 5
)
set cbf-fn=%cbf-pt%\%1
exit/b



:_
:open-dbf-batch-file

call pn dbf>nul
if exist "%cbf-pt%\%1.bat" (
  echo. & echo * Open DBF batch file.
  echo. & echo * "%1.bat" exists.
) else (
  rem echo. & echo * DBF batch file: "%cbf-pt%\%1.bat" NOT found.
  exit/b 5
)
set cbf-fn=%cbf-pt%\%1.bat
exit/b



:_
:open-aliased-file
echo. & echo * Open aliased file.
call fe %1
exit/b



:_
:open-np-file
echo. & echo * Open NP file.
call pn m
set cbf-fn=%cbf-pt%\np%1.txt
exit/b



:_
:use-current-folder-filename

echo. & echo * Use current folder filename.

set cbf-fn=%cd%\%~1

goto main



:_
:main

rem echo. & echo * Display cbf-fn.

if "%cbf-fn%" == "" (
  call err Cbf-fn should not be blank.
  exit/b
)

echo. & echo * Dec-1-2023_6_36_PM
echo   Error Level: %errorlevel%
echo   p1: %1
echo   p2: %2 
echo   cbf-fn: %cbf-fn%
echo   qjq

call fe %cbf-fn% %* || exit/b 5

echo. & echo * Dec-1-2023_6_37_PM
echo   Error Level: %errorlevel%
echo   p1: %1
echo   p2: %2 
echo   cbf-fn: %cbf-fn%
echo   qjq

echo. & echo * cbf-fn VERIFIED: %cbf-fn%

exit/b



:_  (!efsfn)
