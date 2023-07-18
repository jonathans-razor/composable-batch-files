:_
@echo off
if "%~1" == "?" goto help
if not "%~1" == "" goto %1
goto main



:_
:help
echo. & echo * Openssl functions.
echo. & echo * Usage: %0 [space separated parameter(s)]
echo. & echo * Parameter 1 (Optional):

echo. & echo * Batch file style: Multipurpose

echo. & echo * Sample(s):
echo * 

exit/b



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:main
call gub openssl s_client -connect 127.0.0.1:7007
exit/b



:_
:rh
call gub openssl s_client -connect maven.repository.redhat.com:443
exit/b


:_