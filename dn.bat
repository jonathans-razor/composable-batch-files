:_ (!bfdn)

@echo off

if "%~1" == "" goto run
if "%~1" == "?" goto help

goto %1



:_

:help

echo. & echo * Perform .NET Core functions.

echo.
echo Usage: %0 [Parameter 1]

exit/b



:_

Currently installed version on XPS on Jan-10-2022 AFTER download: 3.1.416

Currently installed version on XPS on Jan-10-2022 BEFORE download: 2.1.4

The installation was successful.

The following were installed at: 'C:\Program Files\dotnet\'
    .NET Core SDK 3.1.416
    .NET Core Runtime 3.1.22
    ASP.NET Core Runtime 3.1.22
    .NET Core Windows Desktop Runtime 3.1.22



:
  _______   _______   _______   _______   _______
 |  ___  | |  ___  | |  ___  | |  ___  | |  ___  |
 | |  _| | | |  _| | | |  _| | | |  _| | | |  _| |
 | | |___| | | |___| | | |___| | | |___| | | |___|
 | |_______| |_______| |_______| |_______| |______



:_

:rest

set fp=* Restore Nuget packages.

echo.
echo %fp%

echo.
dotnet restore

exit/b




:_

:db_up

:up_db

set fp=* Create a database based on the current project's DbContext.

rem lu: Sep-17-2018

echo.
echo %fp%

echo.
dotnet ef database update

exit/b



:_

:ef_mig

set fp=* Use EF migragions

rem lu: Sep-18-2018

echo.
echo %fp%

echo.
dotnet ef migrations add initialdb

exit/b



:_

:se_mig

set fp=* Seed migration.

rem lu: Sep-18-2018

echo.
echo %fp%

echo.
dotnet ef migrations add SeeData

exit/b



:_

:dev

set fp=* Set environment to development. This is helpful to see debugging messages when running at the command line.

rem lu: Sep-19-2018

echo.
echo %fp%

set ASPNETCORE_ENVIRONMENT=Development

exit/b



:_

:vers

set fp=* Get version.

echo.
echo %fp%

echo.
dotnet --version

exit/b



:_+ Console Apps



::_

:neco-not-working

set fp=* New conosle app.

echo.
echo %fp%

echo.
dotnet new console -o MyApp -f net7.0

exit/b
rem lu: Sep-15-2023



::_

:neco

echo. & echo * Dotnet new console.

echo.
dotnet new console --force

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



:_
:r
:run

echo. & echo * Run DotNetCore web server.

echo.
dotnet run

exit/b



:_ (!rfsp) (mov-6)
