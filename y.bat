:_

@echo off



:_

set cbf-filep=* Summary: Using advanced routing, open text files for viewing or editing.



:_

set fp=* Route callers.

if -%~1-==-- goto help
if -%~1-==-?-goto help

rem Routing intelligence
call sfn3 %*

goto main



:_

:help

cls

echo. & echo %cbf-filep%

rem lu: 

echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo Parameter 1: Filename token.

echo. & echo Parameter 2: Override switch.

echo. & echo Parameter 3 (Optional): Application alias. Default is command window.

echo. & echo Batch file style: Multipurpose

exit/b



:_
       _____________________           _____________________           _____________________
mn    /  __________________()         /  __________________()         /  __________________()
     /  /|_________________          /  /|_________________          /  /|_________________ 
    /  /_/________________()        /  /_/________________()        /  /_/________________()
   /______________________         /______________________         /______________________
   |_____________________()        |_____________________()        |_____________________()  



:_

:

echo. & echo *

exit/b



:_

:main

if "%2"=="" (
  echo.
  type "%cbf-fn%"
  exit/b
)

rem set cbf-fn=c:\a\j5.txt
rem set cbf-parameter=%cbf-fn%

call an %3

if errorlevel 1 exit/b

set test_results_filename=%temp%\%~1_type_results.txt

echo.>"%test_results_filename%"
echo Contents of: "%cbf-fn%">>"%test_results_filename%"
echo.>>"%test_results_filename%"
type "%cbf-fn%">>"%test_results_filename%"

set cbf-parameter=%test_results_filename%

rem echo. & echo * Cbf-parameter: %cbf-parameter%

call r

exit/b



:_
