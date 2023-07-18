:_
@echo off
if not "%1" == "" goto help
goto main



:_
:help
echo. & echo * Synchronize 2 folders, CBF and VDI.
echo. & echo * Usage: %0
echo. & echo * Batch file style: Single purpose
exit/b
rem lu: Mar-4-2022



:_

   .--.      .--.      .--.      .--.      .--.      .--.      .--.      

 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'      `--'      `--'     



:_

:main

call pp cbf

call pp ql

cd ..

exit/b



:_
