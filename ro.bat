:_ (!ro)

@echo off
title %0

if "%~1" == "" goto mro
if "%~1" == "?" goto help
if "%~2" == "/n" goto file-not-read-only

rem qq
call paco "%~1" .>nul && goto 

goto %1



:_
:help

cls

echo. & echo  * Make files read-only.

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1:
echo      x

echo. & echo    Batch file style: Multipurpose

echo. & echo  * Samples:
echo      %~n0 

exit/b

lu: 
Nov-15-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:

exit/b



:_
:ro
:make-all-files-in-the-current-folder-read-only
set cbf-pd=make-all-files-in-the-current-folder-read-only
echo. & echo * %cbf-pd%. 

attrib +r *.*

exit/b

lu: 
Nov-16-2023



:_
:n
:make-all-files-in-the-current-folder-not-read-only
set cbf-pd=make-all-files-in-the-current-folder-not-read-only
echo. & echo * %cbf-pd%. 

attrib -r *.*

exit/b

lu: 
Nov-16-2023



:_
:f

echo. & echo * Make a specific file read-only.

attrib +r "%~1"

exit/b

lu: 
Nov-16-2023



:_
:file-not-read-only

echo. & echo * Make a specific file not read-only.

attrib -r "%~1"

exit/b

lu: 
Nov-16-2023



:_
