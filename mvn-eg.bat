cd %USERPROFILE%\.m2\repository\classworlds\classworlds\1.1

echo.
mvn install:install-file classworlds-1.1.jar &
 -Dfile=classworlds-1.1.jar &
 -DgroupId=com.googlecode &
 -DartifactId=json-simplet &
 -Dversion=1.1.1 & 
 -Dpackaging=jar