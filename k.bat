:_ (!k)

@echo off

title CBF: %0

if "%~1" == "?" goto help

rem goto code-execution-area
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

echo. & echo * 



exit/b



:_

:code-execution-area



:_

echo. & echo * 



exit/b

Jan-3-2024



:_ (!efk)
