:_ (!ro)

@echo off
title %0

if "%~1" == "" goto all-read-only
if "%~1" == "?" goto help
if "%~1" == "/n" goto all-not-read-only
if "%~2" == "/n" goto file-not-read-only

call paco "%~1" .>nul && goto file-read-only

goto %1



:_
:help

cls

echo. & echo  * Make files read-only or not.

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1 (Optional):
echo    If blank, make all files in the current folder read-only.
echo    If /n, make all files in the current folder not read-only.
echo    If filename, make that file read-only.

echo. & echo  * Parameter 2 (Optional):
echo    If /n, make file, specified in parameter one, not read-only.

echo. & echo    Batch file style: Multipurpose

echo. & echo  * Samples:
echo    %~n0 
echo    %~n0 /n
echo    %~n0 j1.txt
echo    %~n0 j1.txt /n

exit/b

skw: readonly

lu: 
Nov-15-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:fn
:file-read-only

echo. & echo * Make a specific file read-only.

attrib +r "%~1"

exit/b

lu: 
Nov-16-2023



:_
:fnn
:file-not-read-only

echo. & echo * Make a specific file not read-only.

attrib -r "%~1"

exit/b

lu: 
Nov-16-2023



:_
:all
:all-read-only

echo. & echo * Make all files in the current folder read-only.

attrib +r *.*

exit/b

lu: 
Nov-16-2023



:_
:alln
:all-not-read-only

echo. & echo * Make all files in the current folder not read-only.

attrib -r *.*

exit/b

lu: 
Nov-16-2023



:_
