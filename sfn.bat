:_

@echo off

title CBF: %0

if "%~1" == "?" goto help

set cbf-fn=

cls

call paco "%~1" . && goto use-current-folder-filename
call paco "%~1" /d && goto use-dcv

goto main



:_
:help

cls

echo. & echo * Set cbf-fn based on an algorithm.

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1:
echo    If period, use current folder filename.
echo    If /d, use DCV.

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
:use-current-folder-filename

echo. & echo * Use current folder filename.

set cbf-fn=%~1

goto main



:_
:use-dcv

echo. & echo * Use DCV.

set cbf-fn=dcv

goto main



:_
:main

rem echo. & echo * Display cbf-fn.

if "%cbf-fn%" == "" (
  call err Cbf-fn should not be blank.
  exit/b
)

call fe "%cbf-fn%" || exit/b 5

echo. & echo * cbf-fn VERIFIED: %cbf-fn%

exit/b



:_
