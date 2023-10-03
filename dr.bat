:_

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help
if "%~1" == "/d" goto delete-directory
if "%~1" == "/np" goto np

goto create-directory



:_

:help
cls
echo. & echo * Create and delete directories.
echo. & echo   Usage: %0 [Parameter (s)]
echo. & echo * Parameter 1: The name of the folder you wish to create and navigate to.
echo   If equal to "/d", delete the directory specified in Parameter 2.
echo   If equal to "/np", the now playing folder will be created.
echo   Note: When creating new folders, quotes are not necessary.
echo. & echo * Parameter 2 (Optional): The name of the folder you wish to delete.
exit/b

lu:
Oct-3-2023
Jun-12-2023



:_

   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--' 



:_
:np
echo. & echo * Create NP folder
call t tick
call lp np>nul
call md %cbf-pd%
call cd %cbf-pd%
exit/b
rem lu: Mar-20-2023



:_
:delete-directory
echo. & echo * Delete directory "%2".
if "%~2" == "" err Percent 2, directory name, cannot be blank.
rd /q /s %2
exit/b
rem lu: Jun-1-2018



:_
:create-directory
echo. & echo * Create directory and navigate to it.
md "%*"
cd "%*"
exit/b
