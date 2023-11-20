:_

@echo off
title %0

if "%~1" == "?" goto help
call paco "%~1" .>nul && goto unzip-file-to-current-folder



:_
:help

cls

echo. & echo  * Zip.

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1:
echo    If contains period, unzip file to current folder.

echo. & echo    Batch file style: Multipurpose

echo. & echo  * Samples:
echo    %~n0 

exit/b

lu: 
Nov-15-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:unzip-file-to-current-folder

echo. & echo * Unzip zip file's contents to current folder.

call fe "%~1" || exit/b 5
call paco "%~1" .zip || exit/b

pkzipc -extract -overwrite %1

exit/b



:_
