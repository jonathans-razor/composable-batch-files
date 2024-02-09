:_ (!bfvu)
@echo off

title CBF: %0

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto %1



:_
:help

cls

echo. & echo  * Vue.

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



:_+ Vue Applications Family (!fcvu)



::_
:app1

echo. & echo * Run Vue application %1.

call t app1>nul
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



::_
:app5

echo. & echo * Vue application "%1". A vanilla/unedited Vue 3 starter project built on Jan-30-2024 created using "vue create".

call t vu>nul
cd %1
call nm ruse
call lh 8080

exit/b



::_
:app6

echo. & echo * Vue application "%1". The simplest possible application created using "vue create".

call t vu>nul
cd %1
call nm ruse
call lh 8080

exit/b

rem:
Contains more than 15 substitutable App.vue files. For example, use cp app6-0 to start from the beginning.



::_
:app7

echo. & echo * Vue application "%1". Created using all yes values from "vue create vue@latest".

call t vu>nul
cd %1
call nm rude
call lh 5173

exit/b

rem:
This project was created with all yeses to the following questions:

ue.js - The Progressive JavaScript Framework

v Add TypeScript? ... No / Yes
v Add JSX Support? ... No / Yes
v Add Vue Router for Single Page Application development? ... No / Yes
v Add Pinia for state management? ... No / Yes
v Add Vitest for Unit Testing? ... No / Yes
v Add an End-to-End Testing Solution? » Playwright
v Add ESLint for code quality? ... No / Yes
v Add Prettier for code formatting? ... No / Yes

Scaffolding project in d:\Dropbox\IT\vue-testing\app7...

Done. Now run:

  cd app7
  npm install
  npm run format
  npm run dev



::_
:app8

echo. & echo * Run Vue application %1. This app was build from example code on the Vue quickstart webpage.

call t %1>nul
br index.html

exit/b

rem:
https://vuejs.org/guide/quick-start.html



::_
:app9

echo. & echo * Run Vue application %1. This app was build from the ES Module Build section of the Vue quickstart webpage.

call t %1>nul
br index.html

exit/b

rem:
https://vuejs.org/guide/quick-start.html



:_
:vers

echo. & echo * Version.

echo.
vue --version

exit/b



:_
:docs

echo. & echo * Online doucmentation.

call fx %0 docs

exit/b



:_+ Create Projects



::_
:cps
:crprs
:cvu
:cvup

echo. & echo * Create standard Vue project.

if "%~2" == "" (
  err Percent 2, the name you wish to call the new project, cannot be [blank].
)

vue create %2

exit/b



::_
:cp
:crpr
:cvu
:cvup

echo. & echo * Create latest Vue project.

if "%~2" == "" (
  err Percent 3, the name you wish to call the new project, cannot be [blank].
)

vue create %2

exit/b



::_
:cp2
:cpf

cls

echo. & echo * Create a new Vue project. This is the one that gives a lot of the fancy features.

if "%~2" == "" err Parameter 2, the project name, is required.

npm create vue@latest %2

exit/b

lu:
Feb-6-2024
Feb-1-2024

rem:
This creates a project with these questions:

ue.js - The Progressive JavaScript Framework

v Add TypeScript? ... No / Yes
v Add JSX Support? ... No / Yes
v Add Vue Router for Single Page Application development? ... No / Yes
v Add Pinia for state management? ... No / Yes
v Add Vitest for Unit Testing? ... No / Yes
v Add an End-to-End Testing Solution? » Playwright
v Add ESLint for code quality? ... No / Yes
v Add Prettier for code formatting? ... No / Yes

Scaffolding project in d:\Dropbox\IT\vue-testing\ve1...

The "." creates the project in the current folder I believe. Feb-1-2024
npm create vue@latest .



::_
:cp2x

cls

echo. & echo * Create a new Vue project using NPX.

npx create vue@latest .

exit/b

lu:
Jan-19-2024



:_
:rpcat

echo. & echo * Run project vue-3-and-composition-api-tutorial.

call t vue>nul
call :dev>nul
call vc .
call fx vue lh br

exit/b



:_+ Run VT Family (!fcrvt)



::_
:vt1

echo. & echo * Run %1.

call t vt1>nul
call cp 1-
call t vt1>nul
call nm ruse
call lh 8080

exit/b

rem:
Created using "Vue create" (not latest).



::_
:vt2

echo. & echo * Run %1.

call t vt1>nul
call cp 2-
call t vt1>nul
call nm ruse
call lh 8080

exit/b



::_
:vt3

echo. & echo * Run %1.

call t vt1>nul
call cp 3-
call t vt1>nul
call nm ruse
call lh 8080

exit/b



::_
:vt4

echo. & echo * Run %1.

call t vt1>nul
call cp 4-
call t vt1>nul
call nm ruse
call lh 8080

exit/b



::_
:vt5

echo. & echo * Run %1.

call t vt1>nul
call cp 5-
call t vt1>nul
call nm ruse
call lh 8080

exit/b



::_
:vt6

echo. & echo * Run %1.

call t vt1>nul
call cp 6-
call t vt1>nul
call nm ruse
call lh 8080

exit/b



::_
:vt7

echo. & echo * Run %1.

call t vt1>nul
call cp 7-
call t vt1>nul
call nm ruse
call lh 8080

exit/b



::_
:vt8

echo. & echo * Run %1.

call t vt1>nul
call cp 8-
call t vt1>nul
call nm ruse
call lh 8080

exit/b



::_
:vt9

echo. & echo * Run %1.

call t vt1>nul
call cp 9-
call t vt1>nul
call nm ruse
call lh 8080

exit/b



::_
:vt10

echo. & echo * Run %1.

call t vt1>nul
call cp 10-
call t vt1>nul
call nm ruse
call lh 8080

exit/b



::_
:vt11

echo. & echo * Run %1.

call t vt11>nul
call cp 11
call t vt11>nul
call nm ruse
call lh 8080

exit/b



::_
:vt12

echo. & echo * Run %1.

call t vt11>nul
call cp 12
call t vt11>nul
call nm ruse
call lh 8080

exit/b



::_
:vt13

echo. & echo * Run %1.

call t vt11>nul
call cp 13
call t vt11>nul
call nm ruse
call lh 8080

exit/b



::_
:vt14a

echo. & echo * Run %1.

call t vt11>nul
call cp 14a
call t vt11>nul
call nm ruse
call lh 8080

exit/b



::_
:vt14

echo. & echo * Run %1.

call t vt11>nul
call cp 14
call t vt11>nul
call nm ruse
call lh 8080

exit/b



::_
:vt15

echo. & echo * Run %1.

call cp 15
call t vt11>nul
call nm ruse
call lh 8080

exit/b



::_
:ve1
:ve2
:ve3
:ve4
:ve5
:ve6
:ve7
:ve8
:ve9
:ve10
:ve11
:ve12
:ve13
:ve14
:ve15
:ve16

echo. & echo * Run %1.

call cp %1
call t ve1>nul
call nm rude
call lh 5173

exit/b



:_ (!efvu) qq
