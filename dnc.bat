:_ (!bfdn)

@echo off

if "%~1" == "" goto run
if "%~1" == "?" goto help

goto %1



:_
:help

echo. & echo * Perform .NET Core functions.

echo.
echo * Usage: %0 [Parameter 1]

echo. & echo * Samples:
echo. & echo dn r

exit/b

lu:
Jan-2-2024

supported-languages-series-jj



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:rest

echo. & echo * Restore Nuget packages.

echo.
echo.
dotnet restore

exit/b




:_
:db_up

:up_db

echo. & echo * Create a database based on the current project's DbContext.

rem lu: Sep-17-2018

echo.
echo.
dotnet ef database update

exit/b



:_
:ef_mig

echo. & echo * Use EF migragions

rem lu: Sep-18-2018

echo.
echo.
dotnet ef migrations add initialdb

exit/b



:_
:se_mig

echo. & echo * Seed migration.

rem lu: Sep-18-2018

echo.
echo.
dotnet ef migrations add SeeData

exit/b



:_
:dev

echo. & echo * Set environment to development. This is helpful to see debugging messages when running at the command line.

rem lu: Sep-19-2018

echo.
set ASPNETCORE_ENVIRONMENT=Development

exit/b



:_+ Language Functions Template Code Family (!lfs, !fclg) (skw supported-languages-series-jj)



::_
:hw

rem echo. & echo * Hello world from %0..bat

call t d>nul

cd hello-world-csharp

call %0 run

exit/b



::_
:rs

echo. & echo * Reverse string (%2) from %0.

call t d>nul

cd reverse-string-csharp

call %0 run %2

exit/b



::_
:fz

cls

echo. & echo * Fizz from %0.

call t d>nul
cd fizz-csharp
call %0 run

exit/b



::_
:vers

echo. & echo * Version from %0.bat.

echo.
dotnet --version

exit/b

Date         Version  Machine
-----------  -------  -------
Jan-10-2022  3.1.416  XPS
Jan-9-2022     2.1.4  XPS

The following were installed at: 'C:\Program Files\dotnet\'
    .NET Core SDK 3.1.416
    .NET Core Runtime 3.1.22
    ASP.NET Core Runtime 3.1.22
    .NET Core Windows Desktop Runtime 3.1.22



::_
:vershi

echo. & echo * Version history.

call an nort>nul

set cbf-parameter=https://en.wikipedia.org/wiki/.NET_Framework_version_history

call r

exit/b



:_
:neco-not-working

echo. & echo * New conosle app.

echo.
echo.
dotnet new console -o MyApp -f net7.0

exit/b
rem lu: Sep-15-2023



:_
:b
:build

echo. & echo * Build.

echo.
dotnet build

exit/b
rem lu: Sep-15-2023



:_+ Create a New Console App



::_
:create-hello-world-c-sharp

echo. & echo * Create hello world c sharp program.
call dr hello-world-c-sharp
call :neco
call :run
exit/b
creation date: Sep-18-2023



::_
:neco-no-parameter

echo. & echo * Create a new Dotnet console app.
echo.
dotnet new console --force
exit/b
rem lu: Sep-15-2023



::_
:neco

echo. & echo * Create a new Dotnet console app.
if "%2" == "" (
  call err Parameter 2, app name, is required.
  exit/b
)
echo.
dotnet new console -n %2
exit/b
rem lu: Sep-15-2023



::_
:r
:run

rem echo. & echo * Run DotNetCore web server.

echo.
dotnet run %2

exit/b



:_ (!rfsp) (mov-6)
