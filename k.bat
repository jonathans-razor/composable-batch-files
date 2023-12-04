:_ (!k)

@echo off

title CBF: %0

if "%~1" == "?" goto help

rem goto code-execution-area
if "%~1" == "" (
  goto code-execution-area
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



:_

echo. & echo * Play with the clip command.

rem echo clip | c:\a\j1.txt
rem call e j1
type clip

exit/b



:_

echo. & echo * 



exit/b



:_

:code-execution-area

rem echo. & echo * Code below here runs. Permanent QQ8 **********************



:_

echo. & echo * Rename resume.

ren jona*me.docx "Jonathan Jones' Resume - Dec-4-2023.docx"

exit/b

Dec-4-2023



:_
