:_

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto %1



:_

:help

cls

echo. & echo * Golang command helper.

echo. & echo   Usage: %0 [space separated parameter(s)]

echo. & echo * Parameter 1 (Optional):

echo. & echo * Batch file style: Multipurpose

echo. & echo * Examples:
echo   gol run hello-world.go

exit/b
rem lu: Sep-22-2023



:_

   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--' 



:_

:runm

set fp=* Run a go program.

call m specific_file_presence main.go

if errorlevel 1 exit/b

echo.
go run main.go

exit/b



:_

:crbi

:inst

set fp=* Create a binary.

go install

exit/b



:_

:test

set fp=* Test.

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



:_

:vers

echo. & echo * Version.

echo.
go version

exit/b



:_

:hw

rem echo. & echo * Hello world.

call t iw>nul
call gol run hello-world.go

exit/b



:_

:run

rem echo. & echo * Run a Go program.

call fe "%~2" || exit/b
call paco "%~2" .go || exit/b

echo.
go run "%~2"

exit/b



:_
