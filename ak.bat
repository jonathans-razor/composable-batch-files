@echo off
if "%~1" == "?" goto help
goto main



:help
cls
echo. & echo * Awk-related commands

echo. & echo * Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1:
echo  

echo. & echo * Batch file style: Multipurpose

echo. & echo * Samples:
echo   %~n0 

exit/b

rem creation date: 



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:main

echo. & echo * Under construction.
exit/b

[5:08 PM] Loyde, John (CTR)

awk '{ if ($0~/jenkins/) { printf("\njenkins:x:1000080000:0:Jenkins Continuous Build server:/var/lib/jenkins:/bin/false"); } else { printf("\n%s",$0);}}' /etc/passwd > /etc/passwd 

this would basically change the line in the file - since we don't have vi  you can't edit anything easily.

exit/b
