:_

@echo off



:_

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto preprocess



:_

:help

cls

echo. & echo * Set cbf-fn based on an evaluation.

echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo * Parameter 1: Filename, filename alias or batch file prefix for a batch file ^
that lives in either the CBF or Share-zone folder. Evaluated filename parameter.

echo. & echo Parameter 2 or greater (Optional): 
echo   -e Filename without extension, e.g. Jenkinsfile. 
echo   -d Delete file before opening it.
echo   /f Use fully qualified filename for file in current folder.

echo. & echo * Batch file style: Single Purpose

echo. & echo * Entangled variable: cbf-fn

echo. & echo * Example(s):
echo   %0 e
echo   %0 ccj

exit/b



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:preprocess

call :evaluate_the_parameter_list %*

echo %*| C:\Windows\System32\find.exe /i "/f">nul
if %errorlevel% == 0 (
  goto use-current-folder-full-filename
)

echo %1| C:\Windows\System32\find.exe /i ".">nul

if %errorlevel% == 0 (
  goto use_current_folder_filename
)

echo %*| C:\Windows\System32\find.exe /i " -e">nul
if %errorlevel% == 0 (
  goto use_current_folder_filename
)

echo %*| C:\Windows\System32\find.exe /i " -n">nul
if %errorlevel% == 0 (
  goto use_current_folder_filename
)

goto use_alias_or_batch_file



:_

:evaluate_the_parameter_list

echo. & echo * Evaluate the parameter list.

rem lu: Nov-27-2019

set d_switch=0
set e_switch=0

:top_of_parameter_line_evaluation

if "%~1" == "" goto exit_loop

if "%~1" == "-d" set d_switch=1
if "%~1" == "-e" set e_switch=1

shift

goto top_of_parameter_line_evaluation

:exit_loop

rem echo.
rem echo d: %d_switch%
rem echo e: %e_switch%

exit/b



:_

:use_alias_or_batch_file

echo. & echo * Use batch file to find filename.

if exist "%composable-batch-files%\%~1.bat" (
  set cbf-fn=%composable-batch-files%\%~1.bat
  rem echo.
  rem  Ran from CBF folder.
  goto file_exists
)

if exist "%share-zone%\%~1.bat" (
  set cbf-fn=%share-zone%\%~1.bat
  echo.
   Ran from Share-Zone folder.
  goto file_exists
)

goto use_alias



:_

:use_alias

echo. & echo * Use alias to find filename. Sep-5-2021_6_02_PM

echo.


call fnv %~1

if %errorlevel% == 4 (
  exit/b
)

if %errorlevel% gtr 1 (
  goto file_does_not_exist
)

if errorlevel 1 (
  rem echo.
  rem echo Error finding filename. May-11-2020_9_11_PM
  exit/b 1
)

goto file_exists



:_
:use_current_folder_filename
echo. & echo * Use current folder filename. Jul-5-2023_5_25_PM
set cbf-fn=%~1
if exist "%cbf-fn%" (
  goto file_exists
)
goto file_does_not_exist



:_

:use-current-folder-full-filename

echo. & echo * Use current folder full filename. Browser usually require this. Jul-5-2023_5_25_PM

cd>%tmp%\current-folder.txt
set /p cbf-full-filename=<%tmp%\current-folder.txt
set cbf-full-filename=%cbf-full-filename%\\%1
set cbf-fn=%cbf-full-filename%

if exist "%cbf-fn%" (
  goto file_exists
)

goto file_does_not_exist



:_

:file_exists

rem echo. & echo * The batch file label and CBF were found and/or the file exists. Success!

if "%d_switch%" == "1" (
  echo.
  echo * Delete file "%cbf-fn%", before opening. Nov-27-2019 6:36 PM
  echo.>"%cbf-fn%"
  exit/b 0
)

exit/b 0



:_

:file_does_not_exist

echo. & echo * The batch file label and CBF were found but file does MOT exist.

echo.


echo.>"%cbf-fn%"

echo.
echo * But now it does.

exit/b 0



:_ (!rfsp) (mov-7)
