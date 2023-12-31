@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

call paco "%~1" *>nul && goto zip-all-files
call paco "%~1" .>nul && goto zip-a-single-file

goto %1



:_
:help
cls
echo. & echo * Zip.

echo. & echo * Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1: File(s) you wish to zip or zip function you wish to run.

echo. & echo * Batch file style: Multipurpose

echo. & echo * Samples:
echo   %~n0 Jun-26-2023
echo   %~n0 j1.txt
echo   %~n0 *.*

exit/b

rem creation date: Jun-26-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:Jun-26-2023
pkzipc -add -nozipextension -pass=drake-passage jones-intake.zip "intake form vcm june 2023_jonathan.pdf"
exit/b



:_
:zip-a-single-file

echo. & echo * Zip a single file.

pkzipc -add %1 %1

exit/b



:_
:zip-all-files

echo. & echo * Zip all files.

call dt>nul
pkzipc -add %cbf-date-and-time% *.*

exit/b



:_
