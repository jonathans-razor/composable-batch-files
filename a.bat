@echo off
if not "%~1" == "" goto :next
cd ..
exit/b
:next
t %1
