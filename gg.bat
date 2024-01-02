:_

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

call paco "%~1" . && goto run

goto %1



:_

:help

cls

echo. & echo * Golang command helper.

echo. & echo   Usage: %0 [space separated parameter(s)]

echo. & echo * Parameter 1 (Optional):

echo. & echo * Batch file style: Multipurpose

echo. & echo * Examples:
echo   gol hello-world.go
echo   gol gs
echo   gol vers

exit/b

lu:
Jan-2-2024
Sep-22-2023

a-language-i-am-trying-to-stay-current-with-series-jj



:_
   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--' 



:_
:runm

echo. & echo * Run a go program.

call m specific_file_presence main.go

if errorlevel 1 exit/b

echo.
go run main.go

exit/b



:_
:crbi

:inst

echo. & echo * Create a binary.

go install

exit/b



:_
:test

echo. & echo * Test.

go test

exit/b



:_
:igopls

echo. & echo *

call t rg>nul
go install -v golang.org/x/tools/gopls@latest

exit/b



:_
:buil-se

echo. & echo * Build secret.

rem lu: May-11-2022

call t imag

go build secret.go

exit/b



:_
:buil

echo. & echo * Build.

if "%~2" == "?" goto help
if "%~2" == "" goto help

rem lu: May-16-2022

call m file-is-present "%~2"

if errorlevel 1 exit/b

echo. & echo * Build %2.
go build "%~2"

exit/b

:help

echo. & echo Parameter Descriptions:
echo. & echo Parameter 2: Name of the go file to build.

exit/b



:_
:tidy

echo. & echo * Tidy.

rem created: Sep-02-2022

go mod tidy

exit/b

I got this command from Phil K. He says it will help me get our go code to compile.



:_+ Language Features Family (!fylggo) (skw language-functions-series-jj)



::_
:echo-parameters
:ep

echo. & echo * Echo parameters from %0.bat.
call t dsa>nul
call %0 echo-parameters.go %*
exit/b



::_
:hw

rem echo. & echo * Hello world from %0.
call t dsa>nul
call %0 hello-world.go
exit/b



::_
:fz
call n gg%1>nul || exit/b
echo. & echo * %cbf-fn% from %0.bat.
call t d>nul
@echo on
go run %cbf-fn%
exit/b



::_
:rs

call n ggrs>nul || exit/b

echo. & echo * Reverse string from  %0.bat.

call t d>nul

echo.
go run %cbf-fn% %2

exit/b



::_

:vers

echo. & echo * Version from %0.bat.

echo.
go version

exit/b

go version go1.21.3 windows/amd64 on XPS - Oct-20-2023 (after upgrade)
go version go1.17.2 windows/amd64 on XPS - Oct-20-2023 (before upgrade)



::_
:rs
echo. & echo * Reverse string from %0.
call t d>nul
echo.
go run reverse-string.go %2
exit/b



::_

:run

rem echo. & echo * Run a Go program.

call fe "%~1" || exit/b
call paco "%~1" .go || exit/b

echo.
go run %*

exit/b



:_
