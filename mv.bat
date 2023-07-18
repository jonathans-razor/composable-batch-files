:_

@echo off

if "%~1" == "" goto pc2cj
if "%~1" == "?" goto help

goto %1



:_

:help

echo. & echo * Move files using function routing.

echo. & echo Usage: %0 [Parameter 1] (where parameter 1 is the atomic function you wish to call). If left blank, "pc" is used.

echo. & echo Batch file style: Multipurpose

echo.          
echo     Parameter  Description
echo -------------  ------------------------------------------------------------------------
echo            cp  Move file in the current directory to nickname-specified path.
echo           cps  Move file in the current directory to nickname-specified path and stay in current folder.
echo           cpa  Move all files in the current directory to nickname-specified 
path.
echo            pc  Overarching podcast mover.

exit/b



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:to_path

:move_files_in_current_folder_to_cbf-pt

echo. & echo * Move files -
echo   from current folder: %cd%
echo           to cbf path: %cbf-pt%
echo.

call m folder_is_empty "%cd%">nul

if errorlevel = 1 (
  echo. & echo * Note: Folder "%cd%" is empty. Aug-19-2022_5_26_PM
  exit/b
)

call m clear_errorlevel_silently

attrib -h

move *.* "%cbf-pt%"

exit/b



:_

:cpa

echo. & echo * Move all files in the current directory to nickname-specified path.

if -%2-==-?- goto help
if -%2-==-- goto help

call pn %2

if errorlevel 1 exit/b

move *.* "%cbf-pt%"

call dir "%cbf-pt%"

exit/b

:help

echo. & echo Parameter Description(s):
echo. & echo Parameter 2: Target folder alias.

exit/b



:_

:cp
:cps

echo. & echo * Move file in the current directory to nickname-specified path.

if "%~2" == "?" goto help
if "%~2" == "" goto help
if "%~3" == "" goto help

if not exist "%~2" (
  echo. & echo * Error: File "%~2" doesn't exist.
  exit/b 5
)

call pn %3

if errorlevel 1 exit/b

@echo on
move "%~2" "%cbf-pt%"
@echo off

if errorlevel 1 exit/b

if "%~2"=="cp" (
  call t %3
  dir "%~2"
)

exit/b


:help

echo. & echo * Parameter Description(s):
echo. & echo   Parameter 2: Current folder filename.
echo   Parameter 3: Target folder alias.

exit/b



:_+ Move Podcast Operations



::_

:pc2cj

echo. & echo * Move podcasts from my computer's hard drive to ClipJam.

rem Make sure mp3 is plugged in and detected.
call t clja

if errorlevel 1 exit/b

rem Delete old files from the the Audiobook folder.
call de old-mp3-files

call :pc-2-sa

rem Run the tag program.
call j tag

if errorlevel 1 (
  call err Error at Jun-29-2023_1_04_PM.
  exit/b
)

echo.
pause

if "%~2" == "n" (
  echo.
  echo * Do NOT move old content to the audiobooks folder.
) else (
  rem Old content is transferred by default.
  call :cj_2_old_cj
)

call :sa_2_cj

exit/b

rem lu: Nov-1-2022



::_

:2sa
:pc-2-sa

echo. & echo * Move podcasts to the staging folder.

rem FCD: Aug-20-2022

call pn sa>nul

set mp3_staging_area=%cbf-pt%

call t pc>nul

echo.
for /r %%j in (*.mp3) do move "%%j" "%mp3_staging_area%"

exit/b



::_

:cj_2_old_cj

rem echo. & echo * Move old ClipJam files from the Podcasts to Audiobooks folder.

rem This ensures that the podcasts folder has the newest content.

rem lu: Aug-20-2022

call t clipjam_podcasts>nul

if %errorlevel% == 1 (
  exit/b
)

call n cja>nul

rem echo * Note: the move command complains if there are no files present to move. Sep-2-2018

call :move_files_in_current_folder_to_cbf-pt

exit/b



::_

:sa_2_cj

rem echo. & echo * Move staging area podcasts to the Clipjam folder.

rem lu: Aug-20-2022

call t staging_area>nul

call pn clipjam_podcasts

if %errorlevel% == 1 (
  exit/b
)

call :move_files_in_current_folder_to_cbf-pt

exit/b



:_
:all
echo. & echo * Move all current folder files to a nickname-specified path.

if -%2-==-?- goto help
if -%2-==-- goto help

call pn %2

if errorlevel 1 exit/b

@echo on
echo.
move *.* "%cbf-pt%"
echo.
@echo off

if errorlevel 1 (
  call err Move problem. Jan-19-2023-13-29
  exit/b
)

cd /d "%cbf-pt%"

dir

exit/b

:help

echo. & echo Parameter Description(s):
echo. & echo Parameter 2: target folder alias.

exit/b



:_ eof
