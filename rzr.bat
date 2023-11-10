:_

@echo off



:_

set cbf-filep=* Multi-edit abstraction layer.

echo.
echo %cbf-filep%



:_

echo. & echo * Shift parameters.

shift /0



:_

echo. & echo * Set color.

call col yob



:_

echo. & echo * Preprocess.

rem lu: Jan-31-2019

rem 

set cbf-fn=

call m initialize_environment_router



:_

echo. & echo * Route callers.

if "%~0" == "?" goto help

goto main

exit/b



:_

:help

echo.
echo Last Updated: Jan-16-2019

echo.
echo Usage: rzr (space separated parameters)

set parameter_1=Parameter 1: Batch file to call.

set parameter_2=Parameters (optional): Parameters to pass to the batch file named in parameter 1.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

exit/b



:_

:main

echo. & echo * Rzr batch file's main function.

rem lu: Feb-1-2019

echo.
cd\

call %0 %1 %2 %3 %4 %5 %6

exit



:_
