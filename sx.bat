:_

@echo off



:_

set cbf-filep=* Use Sublime to edit a batch file in the CBF folder.



:_

echo. & echo * Route callers.

if "%~1" == "" goto help

if "%~1" == "?" goto help

goto main



:_

:help

echo.
echo %cbf-filep%

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Filename in the CBF folder without the "bat" extension.

exit/b



:_

:main

echo. & echo * Main function.

echo %cbf-filep%

call n sm

set cbf-fn=%composable-batch-files%\%~1.bat

set cbf-parameter=%cbf-fn%

call r

exit/b



:_ (!rfsp) (mov-6) 
