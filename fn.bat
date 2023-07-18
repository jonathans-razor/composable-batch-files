:_

@echo off
if "%~1" == "" goto help
if "%~1" == "?" goto help
goto validate-input



:_
:help
cls
echo. & echo * Edit file in Multi-edit or Notepad.
echo. & echo Usage: %0 [space separated parameter(s)]
echo. & echo Batch file style: Single purpose
echo. & echo Entangled variable: cbf-%0
echo. & echo Pit of Success Strategy: For example, if cbf-cf is not found, the algorithm will look for cbf-url.
echo. & echo * Parameter 1: Alias of the file you wish to edit.
echo. & echo Example(s):
echo. & echo %0 k
exit/b
rem lu: Oct-6-2022



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:validate-input
call fnv2 %1
if errorlevel 1 exit/b
call an me>nul
if errorlevel 1 (
  call an vsc
)
if errorlevel 1 (
  call an no
)
if errorlevel 1 exit/b 1



:_

:main

set cbf-parameter=%cbf-fn%

call r

exit/b



:_ (!rfsp) (mov-7)