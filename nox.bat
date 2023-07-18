:_

@echo off



:_

set cbf-filep=* Use Notepad to edit a batch file in the CBF folder.

echo.
echo %cbf-filep%



:_

set fp=* Route callers.

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
echo. Batch Files folder.

exit/b



:_

:main

if not exist %composable-batch-files%\%~1.bat (
  echo.
  echo * The file "%composable-batch-files%\%~1.bat" does not exist.
  exit/b
)

call no %composable-batch-files%\%~1.bat

exit/b



:_
