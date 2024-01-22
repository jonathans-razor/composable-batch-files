:_

@echo off



:_


if "%~1" == "" goto help
if "%~1" == "?" goto help

goto main



:_

:help

echo. & echo * Search for filenames and folders in the current folder and all subfolders for the given search criterion. The results are piped into a temporary file.
echo. & echo * Usage: %0 [parameters]
echo. & echo * Parameter 1: Search criteria. Double quotes are necessary only if spaces are used.
echo. & echo * Batch file style: Single Purpose

echo. & echo * Examples:
echo   %0 "love shack"
echo. & echo * This searches for the phrase "love shack" in all files and folders. Quotes are required around the phrase because it contains a space.

echo. & echo * %0 demo
echo. & echo * This searches for the word "demo" in all files and folders. Quotes are not required around this phrase because it does not contain a space.

exit/b



:_

   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--' 



:_

:main

echo.>%temp%\search_results_fs.txt

echo. & echo * File/Folder Name Search.
echo * File/Folder Name Search>>%temp%\search_results_fs.txt

echo. & echo * Search Criterion: %~1
echo * Search Criterion: %~1>>%temp%\search_results_fs.txt

echo * Current folder: %cd%>>%temp%\search_results_fs.txt

echo ---------------------------------------------------------------------------------------->>%temp%\search_results_fs.txt
echo.>>%temp%\search_results_fs.txt

rem Files are sorted newest files first.

rem @echo on
rem dir /s "*%~1*"
rem @echo off

echo.
rem For some reason the sub folder does not work in Dropbox! But does work on the c: drive.
dir /a /b /o-d /s "*%~1*">>%temp%\search_results_fs.txt

if errorlevel 1 exit/b

rem Folder only.
rem dir /a:d /b /s /o-d "*%~1*">>%temp%\search_results_fs.txt

rem 3 Files only.
rem dir /a-h /b /s /o-d "*%~1*">>%temp%\search_results_fs.txt
rem dir /a-d /b /s /o-d "*%~1*">>%temp%\search_results_fs.txt
rem dir /b /s /o-d "*%~1*">>%temp%\search_results_fs.txt

call an note>nul

start "Test Title" "%cbf-app%" "%temp%\search_results_fs.txt"

exit/b



:_
