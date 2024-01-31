:_
@echo off

title CBF: %0

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto %1



:_
:help

cls

echo. & echo  * Vue runner.

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1:
echo    Alias of the function you wish to run.

echo. & echo    Batch file style: Multipurpose

echo. & echo  * Samples:
echo    %~n0 

exit/b

lu: 
Jan-18-2024



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_+ Vue Applications Family (!fyvu)



::_
:app1

echo. & echo * Run Vue application %1.

call t d>nul
cd hello-world-vuejs
br index.html

exit/b



::_
:app2

echo. & echo * Vue button.

call t vubu>nul
br index.html

exit/b



::_
:app3
:vue

echo. & echo * Run project vue-3-and-composition-api-tutorial. Vue tuturial by Traversy Media.

call t vue>nul
call nm dev>nul
call vc .
call fx vue lh br

exit/b



::_
:app4
:bu2

echo. & echo * Button 2. This works. An example of Single-File Components.

call t d>nul
cd vue-button-2\my-project
call nm ruse
call lh 8080

exit/b

rem:
I replaced the App.vue code with the SFC code from https://vuejs.org/guide/introduction.html which looks like:

<script setup>
import { ref } from 'vue'
const count = ref(0)
</script>

<template>
  <button @click="count++">Count is: {{ count }}</button>
</template>

<style scoped>
button {
  font-weight: bold;
}
</style>



:_
:app5

echo. & echo * Vue application "%1". A vanilla/unedited Vue 3 starter project built on Jan-30-2024.

call t vu>nul
cd %1
call nm ruse
call lh 8080

exit/b



:_
:app6

echo. & echo * Vue application "%1". 

call t vu>nul
cd %1
call nm ruse
call lh 8080

rem   qq

exit/b



:_
