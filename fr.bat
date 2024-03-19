echo. & echo * Fix and run.
if not "%~1" == "" call t %1 || exit/b
call nm fix || exit/b
call rn
