:_

@echo off

echo. & echo * Copy the ax dcv to the clipboard.

if "%~1" == "?" goto help
if "%~1" == "" goto help

goto main



:_

:help

rem lu: 

echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo Parameter 1: Alias for the desired ax DCV.

echo. & echo Batch file style: Single purpose

exit/b



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:main

call n %1

if errorlevel 1 exit/b

if "%cbf-ax" == "" (
  echo. & echo * Error cbf-ax is not defined for alias "%1".
  exit/b
)

echo %cbf-ax%| clip
echo. & echo * Cbf-ax "%cbf-ax%" has been copied to the clipboard.

exit/b



:_
