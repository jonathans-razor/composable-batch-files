:_

@echo off

echo. & echo * Path test for Bash.

if "%~1" == "?" goto help

goto main



:_

:help

rem lu: 

echo. & echo * Usage: %0
echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo Parameter 1 (Optional):

echo. & echo Batch file style: Multipurpose
echo. & echo Batch file style: Single purpose

exit/b



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:main

echo. & echo * Main function.

call n a

exit/b

This is a big problem why CBF won't work in Bash.:
'export' is not recognized as an internal or external command,
operable program or batch file.



:_
