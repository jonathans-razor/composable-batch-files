:_

@echo off



:_

set cbf-filep=* Summary: Using advanced routing, set the cbf filename.

if -%~1-==-?-goto help
if -%~1-==-- goto help

set cbf-fn=

rem Override switches.
if -%~2-==-/o- goto original-cbf-batch-file
if -%~2-==-/v- goto vdi-batch-file

rem Routing intelligence
if exist "%~1" goto current-folder-file

if "%cbf-fn%"=="" (
  call :aliased-file %*
)

if "%cbf-fn%"=="" (
  echo. & echo * Can't find an existing file to process.
  exit/b
)



:_

:help

cls

echo. & echo %cbf-filep%

rem lu: 

echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo Parameter 1 (Optional):

echo. & echo Batch file style: Multipurpose

exit/b



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:original-cbf-batch-file

call pn cbf>nul

if exist "%cbf-pt%\%1.bat" (
  echo. & echo * Original CBF batch file.
  set cbf-fn=%cbf-pt%\%1.bat
)

goto main

exit/b



:_

:vdi-batch-file

call pn vdi>nul

if exist "%cbf-pt%\%1.bat" (
  echo. & echo * VDI batch file.
  set cbf-fn=%cbf-pt%\%1.bat
) else (
  echo. & echo * VDI batch file: "%cbf-pt%\%1.bat" NOT found.
  exit/b 5
)


exit/b



:_

:current-folder-file

set cbf-fn=%~1

goto main



:_

:aliased-file

call n %1>nul

if exist "%cbf-fn%" (
  echo. & echo * Aliased file.
  rem echo. & echo * Cbf-fn "%cbf-fn%" exists.
)

if "%~2"=="/a" goto main

exit/b



:_

:main

echo. & echo * Cbf-fn: %cbf-fn%

exit/b



:_
