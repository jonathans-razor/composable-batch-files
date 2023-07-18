:_ (!bfdn)

@echo off



:_

set cbf-filep=* Perform .NET Core functions.



:_

set fp=* Route callers.

if "%~1" == "" goto run

if "%~1" == "?" goto help

goto %1



:_

:help

echo.
echo %cbf-filep%

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



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:rest

set fp=* Restore Nuget packages.

echo.
echo %fp%

echo.
dotnet restore

exit/b




:_

:b

:build

set fp=* Build.

echo.
echo %fp%

echo.
dotnet build

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




:_

:neco

rem lu: Jan-10-2022

set fp=* Dotnet new console.

echo.
echo %fp%

echo.
dotnet new console --force

exit/b




:_

:run

set fp=* Run DotNetCore web server.

echo.
echo %fp%

echo.
dotnet run

exit/b




:_ (!rfsp) (mov-6)
