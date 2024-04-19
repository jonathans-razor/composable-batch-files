:_ (!ya, !bfya)

@echo off

if "%~1" == "" goto im
if "%~1" == "?" goto help

goto %1



:_
:help

echo. & echo * NPM.
echo. & echo   Usage: %0 [Parameter 1]
echo. & echo * Parameter 1: Nickname of command you wish to execute.
echo. & echo   Batch file style: Multipurpose

echo.
echo     Parameter  Description
echo -------------  ---------------------------------------------------------
echo             i  Install any dependencies listed in package.json.

exit/b



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:im

echo. & echo * Install miscellaneous.
@echo on
yarn install 
exit/b



:_+ Versioning



::_
:vers

echo. & echo * NPM version from %0.bat.

echo.
yarn --version

exit/b

Date        Version  Machine
----------  -------  -------



::_
:lver
:lvers

echo. & echo * Check NPM's long version.

echo.
yarn version

exit/b



::_
:minor

echo. & echo * Automatically increment the minor version number.

echo.
yarn version minor

exit/b



::_
:major

echo. & echo * Automatically increment the major version number.

echo.
yarn version major

exit/b



:_ (!efya)
