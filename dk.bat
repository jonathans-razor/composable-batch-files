@echo off

if "%~1" == "" goto up
if "%~1" == "?" goto help

goto %1



:_
:help
cls

echo. & echo  * Docker.

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1:
echo    Name of the function you wish to run.

echo. & echo  * Batch file style: Multipurpose

echo. & echo  * Samples:
echo    %~n0
echo    %~n0 down

exit/b

lu: 
Nov-8-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:up

echo. & echo * Start and run an entire app on a standalone host that contains multiple service.

echo.
docker-compose up

exit/b



:_
:down

echo. & echo * Down.

echo.
docker-compose down

exit/b



:_
:coup

echo. & echo * Compose up with configuration.

cls

call t deli

@echo on
docker-compose -f src/main/docker/app.yml up
@echo off

exit/b

lu:
Feb-27-2020



:_
:codo

echo. & echo * Compose down with configuration.

cls

echo.

@echo on
docker-compose -f src/main/docker/app.yml down
@echo off

exit/b

lu:
Mar-27-2020



:_
:vers

echo. & echo * Version.

echo.
docker version

exit/b

lu:
Apr-2-2020



:_
:i
:info

echo. & echo * Info.

echo.
docker info

exit/b

lu:
Apr-2-2020



:_
:lc
:ps

echo. & echo * List containers. Kurt used this a lot.

echo.
docker ps

exit/b

lu:
Apr-2-2020


:_
:lic

echo. & echo * List images and containers.

echo.

call %0 li

call %0 lc

exit/b

lu:
Apr-2-2020



:_
:li
:list

echo. & echo * List images.
echo.

docker images

exit/b

lu:
Mar-27-2020



:_
:hw

echo. & echo * Hello world.

echo.
docker run hello-world

exit/b

lu:
Apr-2-2020



:_
:rwsc

echo. & echo * Run a Windows Server container.

echo.
docker run -it mcr.microsoft.com/windows/servercore powershell

exit/b

lu:
Apr-2-2020



:_
:kill

echo. & echo * Kill.

docker kill [put images ids to kill here]

exit/b

lu:
Mar-28-2022



:_
:load

echo. & echo * Load.

docker load -i golang.tar

exit/b



:_
:ps

echo. & echo * Ps.

docker ps -a | grep go-node-image

exit/b



:_
:scan

echo. & echo * Scan runs Snyk tests against images to find vulnerabilities and learn how to fix them

docker scan

exit/b



:_
:gn
:go

echo. & echo * View the currently running Go Node in Docker.

docker ps -a | grep go-node

exit/b



:_
:lico

echo. & echo * List container.

docker container ls

exit/b

lu:
Aug-18-2022



:_
:stop

echo. & echo * Stop container.

if "%~2" == "" (
  err Docker ID is required.
  exit/b
)

docker container stop %2

exit/b

lu: Apr-12-2023



:_
:rc

echo. & echo * Remove container.

if "%~2" == "" (
  err Docker ID is required.
  exit/b
)

docker container rm %2

exit/b

lu:
Apr-12-2023



:_ (!efdok)
