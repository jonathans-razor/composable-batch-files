:_

@echo off

rem echo. & echo * Update timestamp.

rem set classpath=%dropbox%\it\composable-batch-files
set classpath=c:\repositories\composable-batch-files
java Get_Timestamp_With_No_Spaces>%tmp%\java_timestamp.txt

rem cd
rem echo jt: %java_timestamp%

exit/b



:_