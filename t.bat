:_

@echo off

set cbf-title=CBF: %0
title %cbf-title%

if "%~1" == "?" goto help
if "%~1" == "" goto ta

goto preprocess



:_

:help

echo. & echo * Transform directory.
echo. & echo   Usage: %0 [Parameter 1]
echo. & echo   Parameter 1 (Optional): Path alias.

echo. & echo   Batch file style: Single purpose.

echo. & echo   Entangled variable: cbf-pt

exit/b



:_

   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--' 



:_

:preprocess

set cbf-previous-pt=%cbf-pt%

call el /c>nul

set cbf-app=
set cbf-pt=

call pn %1 || exit/b

goto main



:_

:ta

echo. & echo * Ta.

call %0 a

cls

exit/b



:_
:main

cd /d "%cbf-pt%"

exit/b



:_
