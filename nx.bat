:_ (!bfnx, !nx)
@echo off

title CBF: %0

if "%~1" == "?" goto help

goto %1



:_
:help

cls

echo. & echo  * NPX.

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1:
echo    x

echo. & echo    Batch file style: Multipurpose

echo. & echo  * Samples:
echo    %~n0 

exit/b

lu: 
Jan-18-2024



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_+ Create a React App



::_
:crearr

echo. & echo * Create a React app at root.

echo.
npx create-react-app .

exit/b

lu:
Aug-26-2021



::_
:crear

echo. & echo * Create a React app.

if "%~2" == "" (
  echo.
  err Parameter 2, the application/folder name, is required.
)

echo.
npx create-react-app %2

exit/b

lu:
Aug-30-2021



::_
:crearj

echo. & echo * Create a React app at root that has TypeScript enabled.

echo.
npx create-react-app . --template typescript

exit/b

lu:
Oct-26-2021



::_
:creagp

echo. & echo * Create a React app per ChatGPT.

npx create-react-app hello-world-react

exit/b

lu:
Sep-26-2023



:_
:fswi

echo. & echo * Fix service worker issue.

npx msw init public/ --save

exit/b

lu:
Aug-27-2021

Footnote
>< >< ><

Thuy had me run this on Aug-27-2021 agains SUUI to fix an issue with Service Worker.

rem Service Worker successfully created!

I see your MSW is not running. - Thuy Sep-3-2021



:_
:npk

echo. & echo * NPKill, find all node modules that can be removed and allows you to delete them.

echo.
npx npkill

exit/b

lu:
Aug-15-2022



:_
:serv

echo. & echo * NPX serve.

call fe index.html || exit/b

echo.
start "npx serve" cmd /k npx serve

exit/b



:_
:

echo. & echo * Use Nuxt 3.

call fe index.html || exit/b

echo.
start "npx serve" cmd /k npx serve

exit/b



:_ (!efnx)
