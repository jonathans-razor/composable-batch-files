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

echo. & echo * Parameter 0:
echo   Editor alias to use.

echo. & echo * Parameter 1 (Optional):
echo   Blank: open current folder.
echo   Not blank: use routing intelligence, which checks DBF.bat files then falls back to an aliased file.
echo   If contains ".": open current folder file, which may or may not exist. This assumes that no alias ever contains a period in it.

echo. & echo * Parameter 2 (Optional):
echo   /a: aliased file. Since this is the default, it's only necessary for overriding purposes.
echo   /af: aliased folder.
echo   /c: current folder file (used for creating new extenionless files)
echo   /d: DBF batch file.
echo   /f: FF bash file.
echo   /n: np file.
echo   /o: CBF batch file.
echo   /p: Pyton file.

echo. & echo * Parameter 3 (Optional):
echo   /e: override default editor.

echo. & echo * Batch file style: Custom

echo. & echo * Examples:
echo   %0 j1
rem * Edit j1 in Notepad.
echo   %0 j1 /e:no
echo   %0 jenkinsfile /c
echo   %0 dockerfile /c

exit/b



:_

   .--.      .--.      .--.      .--.      .--. 

 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'



:_

:preprocess

call m cel
call i /c>nul

rem Override switches section.
if "%~2" == "/a" (
  call :open-aliased-file %*
  if errorlevel 1 exit/b  
  goto main
)

if "%~2" == "/af" goto open-aliased-folder

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

if exist "%~1" goto open-current-folder-file

rem Notice that this if clause appears AFTER checking for existence of the file This assumes 
rem that no alias would ever contain a period. (skw contains period)
echo %1| find /i ".">nul && goto open-current-folder-file

if -%~2-==-/c- (
  call :open-current-folder-file %*
  if errorlevel 1 exit/b
  goto main
)

set cbf-fn=

call :open-cbf-batch-file %*

if "%cbf-fn%"=="" (
  call :open-dbf-batch-file %*
)

if "%cbf-fn%"=="" (
  call :open-dbf-bash-file %*
)

if "%cbf-fn%"=="" (
  call :open-aliased-file %*
  rem if errorlevel 1 exit/b
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
echo. & echo * Open current folder file.
rem code "%~1"
set cbf-fn=%~1
goto main



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
if exist "%cbf-pt%\%1.py" (
  echo. & echo * Open Python file.
  rem echo. & echo * "%1" exists.
) else (
  rem echo. & echo * Python file: "%cbf-pt%\%1" NOT found.
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

set cbf-editor-parameter=%2
echo %2| find /i "/e">nul
rem echo. & echo * all parameters: %*
if %errorlevel% == 0 (
  rem echo. & echo * Parameter list contains "/e".
  rem echo. & echo * cbf-editor-parameter [before replacement]: %cbf-editor-parameter%
  set cbf-editor-parameter=%cbf-editor-parameter:/e:=%
) else (
  goto next
)
rem echo. & echo *  cbf-editor-parameter [after replacement]: %cbf-editor-parameter%
call an %cbf-editor-parameter%
:next

rem echo. & echo * p0: %0
rem echo * p1: %1
rem echo * p2: %2
rem echo * cbf-fn: %cbf-fn%

rem When we reach the main function, cbf-fn will have been determined a set.
set cbf-parameter=%cbf-fn%
call r

exit/b



:_ (!efe)
