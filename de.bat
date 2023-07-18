:_

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto %1



:_

:help

echo. & echo * Delete functions.
echo. & echo * Usage: %0 [space separated parameter(s)]
echo. & echo * Parameter 1: Function to run.
echo. & echo * Batch file style: Multipurpose.

exit/b



:_

   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--' 



:_

:macmecfg

set fp=* Delete conflicted copies in the mac folder.

rem lu: Feb-13-2019

echo.
echo %fp%

call t smecfg

cd mac

call %0 concop

exit/b



:_

:multi-edit_conflicted_files

set fp=* Delete conflicted copies in Mutli-Edit folders.

rem lu: Mar-6-2019

echo.
echo %fp%

rem 1.
call t s
call %0 concop

rem 2.
call t mecfg
call %0 concop

rem 3.
call t smecfg
call %0 concop

exit/b



:_

:concop_af

set fp=* Delete conflicted copies aggregate functions.

rem lu: Mar-14-2020

echo.
echo %fp%


call t s

call :concop


call t cbf

call :concop


exit/b



:_

:temp

:tmp

set fp=* Temp folder.

rem lu: Apr-8-2020

echo.
echo %fp%

td tmp>nul

del *.* /q /s

exit/b



:_
:om3
:old-mp3-files
echo. & echo * Delete old mp3 files.
call t cja>nul
echo.
forfiles /d -9 /m *.mp3 /c "cmd /c del @path 0x09"
rem echo. & echo Feb-10-2022_4_45_PM
exit/b

rem lu: Jun-29-2020



:_

:m2

echo. & echo * Delete .m2 repository cache.

rem lu: Jun-29-2020

call t m2>nul

cd repository

rem to-do
rem Delete all folders and files here.

exit/b



:_

:cc

echo. & echo * Delete conflicted copies created by DropBox.

rem lu: Jul-21-2022

del /s "*conflicted copy*.*"

exit/b



:_

:wl

echo. & echo * Delete WebLogic cache and tmp folders.

rem lu: Aug-08-2022

call t wlc>nul

if exist cache call  m rd cache

if exist tmp call  m rd tmp

exit/b



:_

:log4

echo. & echo * Delete Log4j*.jar.

call t log4>nul

del log4j*.jar

exit/b

rem lu: Nov-08-2022



