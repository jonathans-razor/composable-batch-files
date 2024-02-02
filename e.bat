:_ (!e, !bfe)

@echo off

if "%~1" == "?" goto help
if "%~1" == "" goto open-current-folder

goto preprocess



:_

:help

cls

echo. & echo * Edit a file based on a file choice algorithm.

echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo   Parameter 0:
echo   Editor alias to use.

echo. & echo   Parameter 1 (Optional):
echo   Blank: open current folder.
echo   Not blank: uses routing intelligence.
echo   If contains ".": open current folder file, which may or may not exist. This assumes that no alias ever contains a period in it.

echo. & echo   Parameter 2 (Optional):
echo   /a: aliased file. Since this is the default, it's only necessary for overriding purposes.
echo   /af: aliased folder.
echo   /ba: FF bash file.
echo   /c: current folder file (used for creating new extenionless files)
echo   /d: DBF batch file.
echo   /e: override default editor.
echo   /np: np file.
echo   /o: CBF batch file.
echo   /p: Python file.

echo. & echo   Parameter 3 (Optional):
echo   /e: Override default editor.
echo   /l: Override file contents with clipboard contents.

echo. & echo   Batch file style: Custom

echo. & echo * Examples:
echo   %0 j1
rem * Edit j1 in Notepad.
echo   %0 j1 /e:no
echo   %0 jenkinsfile /c
echo   %0 dockerfile /c
echo   vc te /p

exit/b



:_

   .--.      .--.      .--.      .--.      .--. 

 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'



:_

:preprocess

call el /c>nul
call i /c>nul



:_
rem Override switches section.

:
if "%~2" == "/c" (
  rem Note that this code block must appear BEFORE the code block for "open-aliased-file". Dec-1-2023
  call :open-new-current-folder-file %*
  goto main
)

:
if "%~2" == "/a" (
  call :open-aliased-file %*
  if errorlevel 1 exit/b  
  goto main
)

if "%~2" == "/af" goto open-aliased-folder

:
if "%~2" == "/ba" (
  call :open-ff-bash-file %*
  if errorlevel 1 exit/b
  goto main
)

:
if "%2" == "/d" (
  call :open-dbf-batch-file %*
  goto main
)

:
if "%~2" == "/np" (
  call :open-np-file %*
  goto main
)

:
if "%2" == "/o" (
  call :open-cbf-batch-file %*
  goto main
)

:
if "%~2" == "/p" (
  call :open-python-file %*
  if errorlevel 1 exit/b
  goto main
)



:_
rem Begin routing intelligence section.

set cbf-fn=

call paco "%~1" .>nul && goto open-current-folder-file

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
:open-aliased-folder

echo. & echo * Open aliased folder.

call t %1
code .

exit/b



:_
:open-current-folder

echo. & echo * Open current folder.
code .

exit/b



:_
:open-current-folder-file

rem echo. & echo * Open current folder file Jan-22-2024-0-14-AM.

call fe %~1 || exit/b 5

set cbf-fn=%cd%\%~1

goto main



:_
:open-new-current-folder-file

rem echo. & echo * Open current folder file Jan-22-2024-0-14-AM.

set cbf-fn=%cd%\%~1

type nul>%cbf-fn%

exit/b



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
:start-visual-studio-code

code "%cbf-fn%"

exit/b



:_
:run-application-without-parameter

echo. & echo * Run application without parameter.

start "title" "%cbf-app%"

exit/b



:_
:main

set cbf-app=%cbf-default-text-editor%

set cbf-editor-parameter=%*
rem echo. & echo * all parameters: %*

echo %*| find /i "/e">nul

if not errorlevel 1 goto first

goto next


:first
rem echo. & echo * Parameter list contains "/e".
rem echo. & echo * cbf-editor-parameter [before replacement]: %cbf-editor-parameter%
set cbf-editor-parameter=%cbf-editor-parameter:*/e:=%
rem echo. & echo *  cbf-editor-parameter [after replacement]: %cbf-editor-parameter%
call an %cbf-editor-parameter%


:next
rem echo. & echo * p0: %0
rem echo * p1: %1
rem echo * cbf-app: %cbf-app%
rem echo * cbf-fn: %cbf-fn%

rem When we reach the main function, cbf-fn will have been determined and set.
set cbf-parameter=%cbf-fn%
call r

exit/b



:_ (!efe)
