:_

@echo off

if not "%~1" == "" goto show-timestamp
if "%~1" == "?" goto help

goto main



:_

:help

echo. & echo * Update java timestamp.

rem lu: 

echo. & echo * Usage: %0
echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo * Parameter 1 (Optional): If not blank, will show current timestamp.

echo. & echo 

echo. & echo * Batch file style: Single purpose

echo. & echo * Sample(s):
echo. & echo * 

exit/b



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:main

echo. & echo * Update current timestamp.
call pn cbf>nul
set classpath=%cbf-pt%
java Get_Timestamp_With_No_Spaces>%tmp%\java_timestamp.txt
exit/b



:_

:show-timestamp

echo. & echo * Show current timestamp.

rem created: Sep-07-2022

echo. & echo * Java Timestamp: 
type %tmp%\java_timestamp.txt

exit/b



:_