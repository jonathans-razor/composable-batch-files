@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

exit/b



:help

cls

echo.
echo * This file teaches parameters for accessing help or none, exit/b and displaying help.

echo. & echo * Quiz: What 2 ways can you use to generate this help file using the command line?

echo. & echo * What's the difference between exit and exit/b?

echo. & echo * Bonus: How can you run this script but suppress the help function using the command line?
