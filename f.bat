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

echo. & echo * Examples:
echo   %0 no j1
echo   %0 npp j1
echo   f npp .gitignore
echo   f no jenkinsfile /c
echo   f np "the rain in spain"
echo   f no "the rain in spain.txt"
echo   f np "the rain in spain.txt"
echo   f np not_an_alias
echo   f no j7.txt
echo   %0 winz riverstone-rest-client-0.0.3-RELEASE.jar
echo   %0 ie ma
echo   %0 kr j1
echo   %0 kr j1.txt
echo   %0 br j1.txt

echo   %0 br te /p

exit/b



:_

   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--' 



:_

:validate-input

call fn "%~2" || exit/b

call an %1 || exit/b

call paco "%~2" . && goto open-current-folder-file

goto main



:_

:open-current-folder-file

echo. & echo * Open current folder file.

start "title" "%cbf-app%" "%cd%\%~2"

exit/b



:_
:main

rem set cbf-fn=c:\a\j1.txt
set cbf-parameter=%cbf-fn%

call r

exit/b



:_ (!eff)
