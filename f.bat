:_

@echo off

title CBF: %0

if "%~1" == "" goto help
if "%~2" == "" goto help
if "%~1" == "?" goto help

goto validate-input



:_

:help

cls

echo. & echo * Filename sapien. Use any application to open any file in the current ^
folder or via alias, with extension or not, with spaces or not.

echo. & echo   Usage: %0 [space separated parameter(s)]

echo. & echo * Parameter 1: Application alias.
echo. & echo   Parameter 2: Inherited from sfn.bat.

echo. & echo   Parameter 3 or greater (Optional): 
echo   -e Filename without extension, e.g. Jenkinsfile. 
echo   -v Create file using clipboad contents. 
echo   -d Delete file before opening it.

echo. & echo * Examples:
echo   %0 no j1
echo   %0 sm j2
echo   f np .gitignore
echo   f .gitignore
echo   f np jenkinsfile -e
echo   f me "rain in spain" -d
echo   f np "the rain in spain"
echo   f no "the rain in spain.txt"
echo   f np "the rain in spain.txt"
echo   f np not_an_alias
echo   f no j7.txt
echo   f np jenkinsfile
echo   f np jenkinsfile -e
echo   %0 np j55.txt -d
echo   %0 winz riverstone-rest-client-0.0.3-RELEASE.jar
echo   %0 ie ma
echo   %0 kr j1
echo   %0 kr j1.txt
echo   %0 br j1.txt

rem qjq Get these to work.
echo   %0 br te /p
echo   %0 me j1.txt /d

exit/b



:_

   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--' 



:_

:validate-input

call sfn "%~2" "%~3" "%~4" "%~5" "%~6"

if errorlevel 1 (
  exit/b
)

call an %1

if errorlevel 1 (
  exit/b
)

call paco "%~2" . && goto open-current-folder-file

goto main



:_

:open-current-folder-file

echo. & echo * Open current folder file.

call fe "%~1" || exit/b 5

rem @echo on
start "title" "%cbf-app%" "%cd%\%~2"

exit/b



:_

:main

set cbf-parameter=%cbf-fn%

call r

exit/b



:_ (!rfsp) (mov-7)
