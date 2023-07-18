@echo off
if -%~1-==-?-goto help
if -%~1-==-- goto help
goto main



:_
:help
echo. & echo * Use jar to inspect EAR files.
echo. & echo * Usage: %0 [space separated parameter(s)]
echo. & echo Parameter 1: Name of EAR file in the current folder.
echo. & echo Batch file style: Single purpose
exit/b



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:main

if not exist %1 (
  echo. & echo * The file "%1" does not exist.
  exit/b
)

call pn gub>nul

@echo on
jar tvf %1| "%cbf-pt%\grep" 'log4j'
@echo off

exit/b



:_ eof
