:_ (!k)

@echo off

title CBF: %0

if "%~1" == "?" goto help

goto code-execution-area
if "%~1" == "" (
  call :code-execution-area
  exit/b
) else (
  goto %1
)
  


:_

:help

cls

echo. & echo * Used for testing, experimenting and developing new batch file functions.

echo. & echo   Usage: %0 (optional parameter 1)

echo. & echo   Parameter 1: Batch file label function you wish to execute. If left blank, the code below the code execution area will run.

echo. & echo   Batch file style: Multipurpose

exit/b

lu:
Dec-2-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_ Metadata: Track Size (!tsk)

     Date      Lines      Bytes   Rubrics  Notes
 -----------  ------  ----------  -------  --------------------------------------------------

: Jan-4-2024     202      2,722       13

: Jan-4-2024     201      2,686       13

: Jan-3-2024     199      2,642       13



:_

echo. & echo * Play with the clip command.

rem echo clip | c:\a\j1.txt
rem call e j1
type clip

exit/b



:_

echo. & echo * Rename resume.

call t d

python date.py>current-date.txt
set /p cbf-date=<current-date.txt

set cbf-fn=Jonathan Jones' Resume - %cbf-date%.docx

echo. & echo cbf-fn: %cbf-fn%

copy jona*me.docx "%cbf-fn%"

exit/b

Dec-4-2023



:_
:

echo. & echo *

rem call dc c:\a\j1.txt

call dc "d:\dropbox\it\discreet-batch-files\code keepers\ckcs.asc"

exit/b



:_

echo. & echo * Bing URL test.

bing.url

exit/b

Dec-15-2023



:_

echo. & echo * Formatting time in dos batch files.

set mydate=%date:/=%
set mytime=%time::=%
set mytimestamp=%mydate: =_%_%mytime:.=_%

echo. & echo * mts: %mytimestamp%

IF "%time:~0,1%" LSS "1" (
   SET DATETIME=%date:~6,4%-%date:~3,2%-%date:~0,2%-0%time:~1,1%-%time:~3,2%-%time:~6,2%
) ELSE (
   SET DATETIME=%date:~6,4%-%date:~3,2%-%date:~0,2%-%time:~0,2%-%time:~3,2%-%time:~6,2%
)

ECHO %DATETIME%

echo. & echo %time%

time /t

FOR /F %%t IN ('powershell -NoProfile -Command "Get-Date -UFormat '%I:%M %p'"') DO (
    SET "mytime=%%t"
)

ECHO %mytime%

exit/b

Dec-31-2023



:_

:label

cls

echo. & echo * Is there a way in a batch file to reference the current batch label?

echo.

echo %0
echo %~f0
echo %~nx0

rem echo %0     :code-execution-area
rem echo %~f0   k.bat
rem echo %~nx0  d:\Dropbox\IT\Composable-Batch-Files\k.bat

exit/b

Jan-3-2024



:_

echo. & echo * Testing ipconfig/all.

rem ipconfig/all
"c:\windows\system32\notepad.exe"

exit/b

Jan-3-2024



:_

echo. & echo * Test passing parameters to q.bat from cbf-skw.

call n ip

@echo on
call q %cbf-skw%

exit/b

Jan-9-2024



:_

echo. & echo * Is there a way in a batch file to tell whether a parameter is a number?

set /a numeric-checker=%~1; 

if %numeric-checker% NEQ %~1 goto ABORT. 

rem When the two are equal - The variable or parameter is-numeric.

exit/b

Jan-12-2024



:_
:use-port-number

echo. & echo * Numeric **********************

exit/b



:_

echo. & echo * Is there a way in a batch file to tell whether a parameter is a number?

call is-numeric "%~1" && goto use-port-number
rem call is-numeric "%~1"

echo. & echo * Not numeric.

exit/b



:_

echo. & echo * Computer name contains "one".

echo %computername%>nul
rem echo %computername%| find /i "one"

exit/b

Jan-26-2024



:_

echo. & echo * File exists errorlevel test.

call fn aj7.txt || exit/b

echo. & echo Hi.

exit/b

Feb-5-2024



:_

cls

echo. & echo * Sidecar dictionary test.

call n %1 2>nul

call el

if errorlevel 1 (
  call pn bel
  
  if exist "%cbf-pt%\pv.bat" (
    call %cbf-pt%\pv.bat %1
  ) else (
    err Hmm. Looks like a Gordian Knot. Feb-7-2024-9-46-PM
  )
)

call el

exit/b

Feb-7-2024



:_

cls

echo. & echo * Double dictionary call.


call n %1 2>nul

call el

if errorlevel 1 goto next

err Hmm. Looks like a Gordian Knot. - Feb-7-2024-9-46-PM


:next
  
call pn bel
if not exist "%cbf-pt%\pv.bat" (
  call %cbf-pt%\pv.bat %1
  cd /d "%cbf-pt%"
  echo hey
)

exit/b

Feb-7-2024



:_

echo. & echo * 

call n %1 2>nul

rem The alias is not found in the primary dictionary, so search the secondary dictionar
if errorlevel 1 goto next

exit/b

:next

call pn bel

if not exist "%cbf-pt%\pv.bat" exit/b

call %cbf-pt%\pv.bat %1

exit/b



:_

cls

echo. & echo * 

call n %1 2>nul

rem The alias is found in the primary dictionary, so exit.
if not errorlevel 1 exit/b

if not exist "%cbf-default-sd%" exit/b

call "%cbf-default-sd%" %1

exit/b



:_

cls

echo. & echo * Expanding filename.

echo.
echo %0

echo.
echo %~0

echo.
echo %~f0

echo.
echo %~nx0

exit/b

Feb-8-2024



:_

cls

echo. & echo * Error level messages.

call n c

call n cq

rem if errorlevel 1 echo * Mar-21-2024-2-42-PM && exit/b
rem if errorlevel 1 echo. & echo * Mar-21-2024-2-42-PM && exit/b

if errorlevel 1 err Mar-21-2024-4-14-PM

rem if error llevel 1 exit/b
rem if %errorllevel% 1 exit/b
rem if errorllevel 1 exit/b
rem if %errorllevel% 1 exit/b
rem if %errorllevel% 1 goto eof
rem if %errorllevel% 1 goto eoferr Mar-21-2024-4-08-PM

exit/b



:_

echo. & echo * Call t rold.

call t rold

exit/b

Mar-22-2024



:_

echo. & echo * Exit and pause.



exit/p

Mar-22-2024



:_
:endless-loop

echo. & echo * Endless loop.

goto endless-loop

exit/b

Apr-11-2024



:_

echo. & echo * Grep.

set path=%path%;c:\Program Files\Git\usr\bin
grep

exit/b

Apr-11-2024



:_
:

echo. & echo * Testing no changes.

rem call s | find /i "Your branch is up to date with"

git status --porcelain=v1
rem git status --porcelain=v1 2>/dev/nul

rem git status -s

echo. & echo EL: %errorlevel%

rem if errorlevel 1 (
  rem echo. & echo * Changes!
  rem goto :acp
rem ) else (
  rem echo. & echo * No changes.
rem )

exit/b



:_

echo. & echo * Executing parameters.

echo %1
%1

exit/b

May-9-2024



:_

echo. & echo * 



exit/b



:_

:code-execution-area



:_

echo. & echo * How to exit after failure.

call t a || exit/b

echo %errorlevel%

exit/b



:_ (!efk)
