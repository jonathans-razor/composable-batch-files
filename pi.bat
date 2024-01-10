@echo off

if "%~1" == "?" goto help
if "%~1" == "/s" goto pipe-batch-file-command

goto main



:help

cls

echo. & echo * Pipe a command line statement to a file.

echo. & echo   Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1: If equal to "/s", go to the pipe batch file command.

echo. & echo   Additional Parameters: The statement whose results you wish to pipe to a file.

echo. & echo   Batch file style: Single purpose.

echo. & echo * Samples:
echo   %~n0 git clone -help
echo   %~n0 /s g h-a
echo   %~n0 set

exit/b

rem creation date: Jun-07-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:pipe-batch-file-command

echo. & echo * Pipe a batch file command.

call %2 %3 %4 %5>%tmp%\pi-results.txt

goto generate-report



:_
:main

%*>%tmp%\pi-results.txt



:_
:generate-report

call an npp>nul

start "Test Title" "%cbf-app%" "%tmp%\pi-results.txt"

exit/b
