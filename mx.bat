:_

@echo off



:_

set cbf-filep=* Use Multi-Edit to edit a batch file in the CBF folder.

rem echo.
rem echo %cbf-filep%



:_

echo. & echo * Route callers.

rem echo Percent 1: %1
rem exit/b

if "%~1" == "" goto help

if "%~1" == "?" goto help

goto main



:_ (!rfsp) (mov-6)

:help

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Filename in the CBF folder without the "bat" extension.

echo.
echo For example, typing "mx m" would edit the m.bat file in the Composable
echo Batch Files folder.

exit/b



:_

:edit_a_share_zone_file

echo. & echo * Edit a share-zone batch file.

rem lu: Apr-19-2019

rem echo.
rem 

set cbf-fn=%share-zone%\%~1.bat

if not exist %cbf-fn% (
  rem echo.
  rem echo * The file "%cbf-fn%" does not exist.
  exit/b 1
)

set cbf-parameter=%cbf-fn%

call r

exit/b



:_

:main

echo. & echo * Main function.

call n me

set cbf-fn=%composable-batch-files%\%~1.bat

if not exist "%cbf-fn%" (
  goto edit_a_share_zone_file
  exit/b
)

set cbf-parameter=%cbf-fn%

call r

exit/b



:_
