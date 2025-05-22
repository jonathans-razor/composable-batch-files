:_
@echo off
if "%~1" == "?" goto help
goto %1
goto main
goto preprocess



:_
:help
cls
echo. & echo * Hello worlds.
echo. & echo   Usage: 
echo   %~n0 [space separated parameter(s)]
echo. & echo   Parameter 1:
echo   If equal to 'all', all hello worlds are run.
echo. & echo   Creation Date:
echo    Apr-22-2024
echo. & echo   Samples:
echo   %~n0 
exit/b



:_

    .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   
   / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / 
        `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'



:_
:preprocess




:_
:main

exit/b



:_
:all
sl hw
exit/b



:_
:qs
:qs2
echo. & echo * Hello world 2 from Quasar.
call t qhw2
call qs dev
rem qq
exit/b



:_
:qs1
echo. & echo * Hello world 1 from Quasar.
call t qhw
start "quasar serve" cmd /k quasar serve
call lh 4000
exit/b



:_
:vu
echo. & echo * Hello world from Vue.js.
call t hw2
call nm srv
call lh 8080
exit/b



:_
:vus
echo. & echo * Vue.js - simple version.
call fx vuejs-hw fn br
exit/b



:_
