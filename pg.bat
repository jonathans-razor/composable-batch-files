:_

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto main



:_
:help
echo. & echo * Connect Ping leveraging nicknames dictionary.
echo. & echo * Usage: %0 [space separated parameters]
echo. & echo * Parameter 1: URL nickname you wish to ping.
echo. & echo * Parameter 2 (Optional): Ping options.
exit/b



:_
   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--' 



:_

:main

set cbf-pg=
set cbf-url=
call n %1

if errorlevel 1 exit/b

if not "%cbf-url%" == "" (
  set cbf-pg-target=%cbf-url%
)

if not "%cbf-pg%" == "" (
  set cbf-pg-target=%cbf-pg%
)

if "%cbf-pg-target%" == "" (
  call err Could not find a suitable ping target for "%1".
  exit/b
)

set cbf-pg-target=%cbf-pg-target:http://=%
set cbf-pg-target=%cbf-pg-target:https://=%
set cbf-pg-target=%cbf-pg-target:www.=%

echo.
@echo on
ping %2 %cbf-pg-target%
@echo off

exit/b



