:_

@echo off

if -%~1-==-?-goto help
if not -%~1-==-- call t %1

goto main



:_

:help

echo. & echo * Git pull then push, with path walker.

rem cls

rem echo. & echo %cbf-file-purpose%

rem lu: Mar-03-2022

echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo Parameter 1 (Optional): Path walker.

echo. & echo Batch file style: Single purpose

exit/b



:_

   .--.      .--.      .--.      .--.      .--.      

 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\:::::::
        `--'      `--'      `--'      `--'      `--' 



:_

:main

echo.

git pull

call ps

call s

exit/b



:_
