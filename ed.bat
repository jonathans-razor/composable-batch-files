:_ (!ed, !bfed)

@echo off

echo. & echo * Choose a file to edit based on a decision algorithm.
if "%~1" == "?" goto help
if "%~2" == "?" goto help

call m cel
call i /c>nul

call an %1>nul

if "%~2" == "" goto run-application-without-parameter


rem Override switches section.


if "%~3" == "/a" (
  call :open-aliased-file %*
  if errorlevel 1 exit/b
  goto main
)

if "%~3" == "/f" goto open-aliased-folder

if "%~3" == "/n" (
  call :open-new-file %*>nul
  exit/b 
)

if "%~3" == "/o" (
  call :open-cbf-batch-file %*
  goto main
)

if "%~3" == "/v" (
  call :open-vdi-batch-file %*
  goto main
)

if "%~3" == "/b" (
  call :open-vdi-bash-file %*
  goto main
)


rem Routing intelligence section.

if exist "%~2" goto open-current-folder-file

set cbf-fn=

call :open-cbf-batch-file %*
if errorlevel 5 set cbf-fn=

if "%cbf-fn%"=="" (
  call :open-vdi-batch-file %*>nul
)

if "%cbf-fn%"=="" (
  call :open-vdi-bash-file %*>nul
)

if "%cbf-fn%"=="" (
  call :open-share-zone-file %*>nul
)

if "%cbf-fn%"=="" (
  call :open-aliased-file %*
)

if "%cbf-fn%"=="" (
  echo. & echo * Cbf-fn doesn't exist. Can't find an existing file to edit. Sep-02-2022
  exit/b
)

goto main



:_

:help

echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo * Parameter 1 (Optional):
echo  blank: open current folder.
echo  not blank: use routing intelligence, which checks VDI.bat files then falls back to an aliased file.

echo. & echo * Parameter 2 (Optional):
echo Only necessary for override purposes.
echo  /a: open aliased file.
echo  /b: open VDI bash file.
echo  /f: open aliased folder.
echo  /n: open current folder new file.
echo  /o: open original CBF batch file.
echo  /v: open VDI batch file.

echo. & echo * Batch file style: Custom

exit/b

rem lu: Mar-29-2022


:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:open-aliased-file

echo. & echo * Open aliased file.

call fnv2 %2

if errorlevel 1 exit/b

exit/b



:_

:open-application

echo. & echo * Open aliased application.

call an %1

if errorlevel 1 exit/b

@echo on
start "title" "%cbf-app%"

exit/b



:_

:open-cbf-batch-file

rem echo. & echo * Open original CBF batch file.

call pn cbf>nul

if exist "%cbf-pt%\%2.bat" (
  echo. & echo * Open original CBF batch file.
  rem echo. & echo OCBF: "%cbf-pt%\%1.bat"
) else (
  rem echo. & echo * Original CBF batch file: "%cbf-pt%\%2.bat" NOT found.
  exit/b 5
)

set cbf-fn=%cbf-pt%\%2.bat
rem echo. & echo Cbf: %cbf-fn%

exit/b



:_

:open-current-folder-file

echo. & echo * Open current folder file.

rem echo. & echo P2: %2

rem echo. & echo P2: %cd%\%2

rem @echo on
start "title" "%cbf-app%" "%cd%\%~2"

exit/b



:_

:open-new-file

echo. & echo * Open new file in current folder.

start "title" "%cbf-app%" %2

exit/b



:_

:open-share-zone-file

rem echo. & echo * Open share-zone batch file.

call pn s>nul

if exist "%cbf-pt%\%2.bat" (
  echo. & echo * Open share-zone batch file.
  rem echo. & echo OCBF: "%cbf-pt%\%1.bat"
) else (
  rem echo. & echo * Share-zone CBF batch file: "%cbf-pt%\%2.bat" NOT found.
  set cbf-fn=
  exit/b 5
)

set cbf-fn=%cbf-pt%\%2.bat
rem echo. & echo Cbf: %cbf-fn%

exit/b



:_

:open-vdi-bash-file

echo. & echo * Open VDI CBF bash file.

call pn vdi>nul

if exist "%cbf-pt%\%2" (
  echo. & echo * Open VDI bash file.
  rem echo. & echo * "%2" exists.
) else (
  rem echo. & echo * VDI CBF bash file: "%cbf-pt%\%2" NOT found.
  exit/b 5
)

set cbf-fn=%cbf-pt%\%2

exit/b



:_

:open-vdi-batch-file

echo. & echo * Open VDI CBF batch file.

call pn vdi>nul

if exist "%cbf-pt%\%2.bat" (
  echo. & echo * Open VDI batch file.
  rem echo. & echo * "%2.bat" exists.
) else (
  rem echo. & echo * VDI CBF batch file: "%cbf-pt%\%2.bat" NOT found.
  exit/b 5
)

set cbf-fn=%cbf-pt%\%2.bat

exit/b



:_

:run-application-without-parameter

echo. & echo * Run application without parameter.

start "title" "%cbf-app%"

exit/b



:_

:main

rem echo. & echo * Main function.

rem @echo on
start "title" "%cbf-app%" "%cbf-fn%"

exit/b



:_
