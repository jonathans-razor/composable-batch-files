:_
@echo off

if "%~1" == "?" goto help
if "%~1" == "" goto run-application-without-parameter
if "%~1" == "/v" goto vers
if "%~1" == "." goto open-current-folder

goto main



:_
:help
cls

echo. & echo * Run Visual Studio Code while leveraging the e.bat decision algorithm.

echo. & echo   Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1 (Optional):
echo   If blank, open VS code.
echo   If not blank, process command in e.bat.
echo   If ".", open current folder.
echo   If "/v", check version.

echo. & echo   Batch file style: Multipurpose

echo. & echo * Samples:
echo   %~n0 index.js
echo   %~n0 te
echo   %~n0 te /p

exit/b


rem creation date: Jul-3-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:run-application-without-parameter
echo. & echo * Run application without parameter.
code
exit/b



:_
:open-current-folder
echo. & echo * Open current folder.
code .
exit/b



:_
:vers

echo. & echo * Version.

code --version

exit/b

rem:

On XPS on Feb-16-2024:
1.86.2
903b1e9d8990623e3d7da1df3d33db3e42d80eda
x64

On XPS on Jan-22-2024:
Version: 1.85.2 (user setup)
Commit: 8b3775030ed1a69b13e4f4c628c612102e30a681
Date: 2024-01-18T06:40:10.514Z
Electron: 25.9.7
ElectronBuildId: 26354273
Chromium: 114.0.5735.289
Node.js: 18.15.0
V8: 11.4.183.29-electron.0
OS: Windows_NT x64 10.0.19045

On XPS on Dec-14-2023:
Version: 1.85.1 (user setup)
Commit: 0ee08df0cf4527e40edc9aa28f4b5bd38bbff2b2
Date: 2023-12-13T09:49:37.021Z
Electron: 25.9.7
ElectronBuildId: 25551756
Chromium: 114.0.5735.289
Node.js: 18.15.0
V8: 11.4.183.29-electron.0
OS: Windows_NT x64 10.0.19045



:_
:main

e.bat %* /e:%0

exit/b



:_ (!efno)
