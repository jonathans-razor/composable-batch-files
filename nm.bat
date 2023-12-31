:_

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto %1



:_
:help

echo. & echo * NPM.
echo. & echo * Usage: %0 [Parameter 1]
echo. & echo * Parameter 1: Nickname of command you wish to execute.
echo. & echo * Batch file style: Multipurpose

echo.
echo     Parameter  Description
echo -------------  -----------------------------------------------------
echo          init  Wizard that creates a package.json file.
echo        init-y  Wizard that creates package.json file with defaults.
echo       get_lic  Get default license setting.
echo          inst  Install a package and save it to package.json.
echo        inst-e  Install Express.
echo        inst-t  Install TypeScript.
echo       inst-tn  Install Types for Node.
echo        list-g  Verbose list of my globally installed packages.
echo           nhn  npm help npm. Involved help.
echo           nhs  NPM help for a specific command.
echo          nhss  NPM help-search for a specific command.
echo          prun  Prune extraneous packages.
echo          repo  Go to the GitHub repository for a given package.
echo       set_lic  Set default license to MIT.
echo       unin_gd  Uninstall global package and remove dependency note.
echo      up_npm_1  Install latest stable version of NPM. Run as ADMIN.
echo        up-npm  Update NPM.
echo        update  Update all dependencies to the latest version.
echo          vers  Check NPM's version.

exit/b

lu:
Jan-2-2024
Sep-21-2023

a-language-i-am-trying-to-stay-current-with-series-jj



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_+ NPM Help



::_
:nhn

echo. & echo * Involved help.

rem lu: Apr-24-2018

echo.
npm help npm

exit/b



::_
:nhs

echo. & echo * NPM help for a specific command.

rem lu: Apr-24-2018

echo.
echo.
npm help %2

exit/b



::_
:nhss

echo. & echo * NPM help-search for a specific command.

rem lu: Apr-24-2018

echo.
echo.
npm help-search %2

exit/b



:_+ Inits



::_
:init

echo. & echo * Uses defaults.

echo.
npm init -y

exit/b

lu:
Oct-18-2023



::_
:init-n

echo. & echo * No defaults. Automated wizard that walks you through creating a package.json file.

echo.
npm init

exit/b



:_+ Settings



::_
:set_lic

echo. & echo * Set default license to MIT.

rem lu: Apr-24-2018

echo.
npm set init-license 'MIT'

exit/b



::_
:get_lic

echo. & echo * Get default license setting.

rem lu: Apr-24-2018

echo.
echo.
npm get init-license

exit/b



:_+ Listing



::_
:list-g

echo. & echo * Verbose list of my globally installed packages.

rem lu: Apr-24-2018

echo.
npm list -g --depth 0 --long true

exit/b



::_
:list

echo. & echo * List of installed packages.

rem lu: Apr-24-2018

echo.
echo.
npm list --long true

exit/b



::_
:list_my

echo. & echo * List of installed packages that only I have installed. As opposed to the hierarchy of what those packages have installed.

rem lu: Apr-24-2018

echo.
echo.
npm list --depth 0

exit/b



::_
:list_all

echo. & echo * List of globally installed packages.

rem lu: Apr-24-2018

echo.
npm list --global true

exit/b



::_
:my_g_json_list

echo. & echo * Verbose list of my globally installed packages in JSON format.

rem lu: Apr-24-2018

echo.
echo.
npm list --global true --depth 0 --long true --json true

exit/b



::_
:my_g_json_dlist

echo. & echo * Verbose list of my globally installed packages in JSON format for dev dependencies only.

rem lu: Apr-24-2018

echo.
echo.
npm list --global true --depth 0 --long true --dev true

exit/b



:_
:prun

echo. & echo * Prune extraneous packages, that is, those that are not in the package.json file.

rem lu: Apr-24-2018

echo.
echo.
npm prune

exit/b



:_
:repo

echo. & echo * Go to the GitHub repository for a given package.

rem lu: Apr-24-2018

echo.
npm repo %2

exit/b



:_
:add

echo. & echo * Add user which is similar to Git's author stuff.

rem lu: Apr-25-2018

echo.
echo.
npm adduser

exit/b



:_+ Versioning



::_
:vers

echo. & echo * NPM version from %0.bat.

echo.
npm --version

exit/b

Date        Version  Machine
----------  -------  -------
Jan-2-2024  10.2.5   XPS
Jan-1-2024  10.1.0   XPS



::_
:lver
:lvers

echo. & echo * Check NPM's long version.

echo.
npm version

exit/b

lu:
Sep-12-2018



::_
:minor

echo. & echo * Automatically increment the minor version number.

echo.
npm version minor

exit/b

lu:
Apr-25-2018


::_
:major

echo. & echo * Automatically increment the major version number.

echo.
npm version major

exit/b

lu:
Apr-25-2018



:_
:patch

echo. & echo * Automatically increment the patch version number.


echo.
npm version patch

exit/b

lu:
Apr-25-2018



:_+ Publishing



::_
:pub

echo. & echo * Publish project to NPM.

rem lu: Apr-25-2018

echo.
echo.
npm publish

exit/b



::_
:pub_beta

echo. & echo * Publish project to NPM in a beta release.

rem lu: Apr-25-2018

echo.
echo.
npm publish --tag beta

exit/b



:_+ Infos



::_
:info

echo. & echo * Information about the current repository.

echo.
npm info

exit/b

lu:
Apr-25-2018



::_
:info_n

echo. & echo * Information about a named repository.

rem lu: Apr-25-2018

echo.
npm info %2

exit/b



:_
:bi

echo. & echo * Batch install DutchTreat packages.

rem lu: Sep-18-2018

echo.
call %0 inst bootstrap
call %0 inst jquery
call %0 inst jquery-validation
call %0 inst jquery-validation-unobtrusive
call %0 inst font-awesome

exit/b



:_
:inse

:insls

echo. & echo * Install serverless.

rem lu: Jul-15-2021

echo.
npm install serverless -g

exit/b


Footnote
>< >< ><

I'm not sure I needed to run this command because when I ran the "npm install" command, I got
a message that said:

 �   Serverless Framework successfully installed!    �
 �                                                   �
 �   To start your first project run 'serverless'.   �

Is this command folder-specific?



:_
:int
:inte
:rit
:rtit

echo. & echo * Run the integration tests.

echo.
npm run test:int

exit/b


Footnote
>< >< ><

You might need to be in a particular folder for this command to work.

If you get a connection typ error, you may need to run the following command in the proper 
folder in a Bash window, Ben B. on c. Jul-8-2021:

REPLAY=record npm run test:int



:_
:rt

echo. & echo * Run test like Joshua does in Visual Studio Code.

echo.
npm run test

exit/b


Footnote
>< >< ><



:_
:icog

echo. & echo * Install cognito. (I actually ran this in bash, not cmd.)

rem lu: Aug-26-2021

echo.
npm i amazon-cognito-identity-js

exit/b



:_
:re

:ruej

echo. & echo * Removes this tool and copies build dependencies, configuration files and scripts &
into the app directory. If you do this, you can�t go back!

rem lu: Sep-2-2021

echo.
if not exist "package.json" (
  echo. & echo * Error: The file "package.json" must exist in the current folder in order for you to run this command.
  exit/b
)

echo.
npm run eject

exit/b

Footnote
>< >< ><

What does npm run eject do?



:_
:run_tests

:test

echo. & echo * Starts the test runner.

rem skw: Run tests. (skw run unit tests)

echo.
if not exist "package.json" (
  echo. & echo * Error: The file "package.json" must exist in the current folder in order for you to run this command.
  exit/b
)

npm test

exit/b


>< >< Footnote:

Here is the result of my first unit test run in deli on Mar-6-2020.

 PASS  src/test/javascript/spec/app/... *.ts

Test Suites: 40 passed, 40 total
Tests:       132 passed, 132 total
Snapshots:   0 total
Time:        128.601s
Ran all test suites.



:_
:rb
:rubi
echo. & echo * Bundles the app into static files for production into a subfolder called "build".

call fe package.json || exit/b

echo.
npm run build

exit/b
rem lu: Aug-29-2023



:_
:pyth

echo. & echo * Set Python configuration path.

rem lu: Sep-2-2021

echo.
npm config set python "C:\Users\J[put--name-of-user-of-interest-here]\AppData\Local\Programs\Python\Python38\python.exe"

exit/b


Footnote
>< >< ><

C:\Users\[put--name-of-user-of-interest-here]\AppData\Local\Programs\Python\Python38

:Python 3.8.8rc1 - Feb. p16, 2021
ownload Windows embedda



:_
:iaa

echo. & echo * Install AWS Amplify.

echo.
call m specific_file_presence package.json 

if errorlevel 1 exit/b

npm install -g @aws-amplify/cli

exit/b

lu:
Sep-5-2021



:_
:iri

echo. & echo * Install react icons.

rem lu: Oct-12-2021

echo.
npm i react-icons

exit/b



:_
:dist

:in

:index

echo. & echo * Run node in the dist folder.

rem lu: Oct-26-2021

echo.
call m within_a_specific_folder dist & if errorlevel 1 exit/b

echo.
node index

call col

exit/b



:_
:baps

:ibaps

echo. & echo * Install dependencies from my BAPS project.

rem lu: Oct-29-2021

echo.
call m specific_file_presence package.json & if errorlevel 1 exit/b

echo.
npm i express dotenv cors needle

exit/b



:_
:baps2

echo. & echo * Install Dev dependency Nodemon.

call m specific_file_presence package.json & if errorlevel 1 exit/b

echo.
npm i -D nodemon

exit/b
rem lu: Nov-1-2021



:_
:rdev

echo. & echo * Run server on http://localhost:5000.

rem lu: Oct-27-2021

echo.
echo.
npm run dev

exit/b



:_
:baps3

echo. & echo * Install rate limit.

rem lu: Nov-1-2021

echo.
call m specific_file_presence package.json & if errorlevel 1 exit/b

echo.
npm i express-rate-limit apicache

exit/b



:_
:fito

echo. & echo * Install Firebase Tools.

rem lu: Feb-14-2022

echo.
npm install -g firebase-tools

exit/b



:_
:ipd

echo. & echo * Install Poolside dependencies.

rem lu: Feb-14-2022

echo.
npm i openai puppeteer @alpacahq/alpaca-trade-api

exit/b



:_+ Uninstalling



::_
:unin-g

echo. & echo * Uninstall "%2" global package and remove dependency section in the package.json file.

rem lu: Apr-24-2018

echo.
echo.
npm uninstall %2 -g --save

exit/b



::_
:unin_s

echo. & echo * Uninstall "%2" local package and remove dependency section in the package.json file.

rem lu: Apr-24-2018

echo.
echo.
npm uninstall %2 --save

exit/b



::_
:unin_g

echo. & echo * Uninstall "%2" global package.

rem lu: Apr-24-2018

echo.
echo.
npm uninstall %2 -g

exit/b



:_
:run
:serv
:star
:start

echo. & echo * Run React UI. Starts the development server.

call fe package.json || exit/b

echo.
start "NPM" cmd /k npm start
rem npm run start

exit/b

rem lu:
Oct-12-2023
Sep-26-2023
Aug-27-2021

Run start script. Rith used this on Dec-5-2019 instead of "ng serve".



:_+ Local JSON Server



::_
:ijs

echo. & echo * Install JSON server.

call fe package.json || exit/b

npm i json-server

exit/b

lu:
Sep-29-2023
Oct-15-2021



::_
:json

echo. & echo * Run JSON local database server.

call fe package.json || exit/b

start "JSON" cmd /k npm run server

exit/b

lu:
Sep-29-2023
Oct-18-2021

Footnote
>< >< ><

When I was doing the React Crash Course, before running the react, first you need to run this 
JSON server command in order to start your local database so that data is available for the 
"to do" app that we created.



:_+ Installing (!fyinst)



::_
:inst

echo. & echo * Install any dependencies listed in package.json.

call fe package.json || exit/b

echo.
npm install

exit/b
rem lu: Aug-29-2023
rem It's a good idea to run npm install before doing your build in case npm needs to update. - Sean
rem If you have an issue with install or update, try deleting the node_modules subfolder.



::_
:inst-e
echo. & echo * Install Express.

call fe package.json || exit/b

echo.

npm install express

exit/b
rem lu: Sep-21-2023



::_
:inst-t
echo. & echo * Install TypeScript.

call fe package.json || exit/b

echo.

npm install typescript --save-dev
rem npm i -g typescript

exit/b
rem lu: Aug-29-2023

If you don't install it globally, the tsc command doesn't seem to work. Oct-26-2021



::_
:inst-tn
echo. & echo * Install Types for Node.

call fe package.json || exit/b

echo.
npm install i -D @types/node

exit/b
rem lu: Aug-29-2023



::_
:inst_s

echo. & echo * Install third party package and save setting in the package.json file.

rem lu: Sep-12-2018

echo.
if not exist package.json (
  echo.
  echo * Error: The file package.json does not exist in the current folder.
  exit/b
)

echo.
npm install %2

exit/b



::_
:inst_g

echo. & echo * Globally install a package so that it works everywhere on the command line.

rem lu: Apr-24-2018

echo.
echo.
npm i %2 -g

rem npm install -g %2

rem Examples:
rem npm install -g cordova
rem npm install -g ionic
rem npm install -g jspm
rem npm install -g taco-cli
rem npm install -g typings

rem The equivalent command for Mac would be: sudo npm -install -g %2

exit/b



::_
:inst_sd

echo. & echo * Install package and save setting in the development section of the package.json file.

rem lu: Apr-24-2018

echo.
echo.
npm install %2 --save--dev

exit/b



::_
:inst_gh

echo. & echo * Install a package using its GitHub URL.

rem lu: Apr-24-2018

echo.
call n %2

echo.
npm i %cbf-url%

exit/b



::_
:inst_svh

echo. & echo * Install a specific version of a package and HOLD at this version.

set fp=%fp% NPM will not upgrade automically in this case.

rem lu: Apr-24-2018

echo.
echo.
npm i underscore@1.8.2 --save --save-exact

exit/b



::_
:inst_sv

echo. & echo * Install a specific version of a package.

set fp=%fp% Given this example, this will install the latest 1.8 version.

rem lu: Apr-24-2018

echo.
echo.

rem For example: npm i underscore@1.7 --save

npm i %2 --save

exit/b



::_
:npmh

echo. & echo * NPM install command for Sencha on Windows.

rem lu: Mar-1-2018


echo.

npm install -g sencha

exit/b



::_
:npmc

echo. & echo * NPM install command for Sencha on Windows.

rem lu: Mar-1-2018

echo.
npm install -g sencha-cmd

exit/b



::_
:iac

echo. & echo * Install Angular client.

echo.
npm install -g @angular/cli

exit/b

rem lu: 
Sep-22-2023
Feb-11-2019



:_+ NPX (!fynpx)



::_
:fswi

echo. & echo * Fix service worker issue.

rem lu: Aug-27-2021

echo.
if not exist "package.json" (
  echo. & echo * Error: The file "package.json" must exist in the current folder in order for you to run this command.
  exit/b
)

npx msw init public/ --save


Footnote
>< >< ><

Thuy had me run this on Aug-27-2021 agains SUUI to fix an issue with Service Worker.

rem Service Worker successfully created!

I see your MSW is not running. - Thuy Sep-3-2021

exit/b



::_
:npk

echo. & echo * NPKill, find all node modules that can be removed and allows you to delete them.

rem lu: Aug-15-2022

echo.
npx npkill

exit/b



:_+ Create a React App



::_
:crar

echo. & echo * Create a React app at root.

rem lu: Aug-26-2021

echo.
npx create-react-app .

exit/b



::_
:cra

echo. & echo * Create a React app.

rem lu: Aug-30-2021

echo.
if "%~2" == "" (
  echo.
  echo * Error: Parameter 2, the application/folder name, is required.
  exit/b
)

npx create-react-app %2

exit/b



::_
:crart

echo. & echo * Create a React app at root that has TypeScript enabled.

echo.
npx create-react-app . --template typescript

exit/b

lu:
Oct-26-2021



::_
:cra-gp

echo. & echo * Create a React app per ChatGPT.

npx create-react-app hello-world-react

exit/b

lu:
Sep-26-2023



:_
:fix

cls

echo. & echo * Fix npm installation in the current folder.

call fe package.json || exit/b

call dr d node_modules

del package-lock.json

call npm install

exit/b

lu:
Sep-29-2023
Sep-2-2021



:_+ Updating NPM. (skw upgrading, upgrade)



::_
:upda

cls

echo. & echo * Update NPM itself to the latest version.

echo.
echo * Before the update version number.

call %0 vers

echo.
call npm install -g npm

echo.
echo * After the update version number.

call %0 vers

echo.
echo * Expectation: the version numbers should have changed.

exit/b

lu:
Jan-2-2024
Sep-12-2018



::_
:updaa

echo. & echo * Install latest stable version of NPM. Be sure to run as ADMINISTRATOR.

echo.
npm i npm@latest -g

exit/b

lu:
Apr-24-2018



::_
:updas

echo. & echo * Run global update to specific version.

echo.
npm install -g npm@10.2.5

exit/b

lu:
Jan-2-2024
Aug-12-2019



::_
:updaf

echo. & echo * Update current folder's dependencies to the latest version.

call fe package.json || exit/b

echo.

npm update

exit/b

lu:
Jan-2-2024
Aug-12-2019



::_
:updapj

echo. & echo * Update current folder's dependencies and create a package.json file.

echo.

npm update

exit/b

lu:
Jan-2-2024
Aug-12-2019



::_
:update_s

echo. & echo * Update all dependencies to the latest version.

rem lu: Apr-24-2018

echo.
echo.
npm update --save

exit/b



::_
:update_sp

echo. & echo * Update a single package dependency, in this case "%2".

rem lu: Apr-24-2018

echo.
echo.
npm update %2

exit/b



:_
:svel

echo. & echo * Create Svelte sample application.

npm create svelte@latest svelte-example

exit/b

lu:
Jan-2-2024

create-svelte version 6.0.5

T  Welcome to SvelteKit!
node:internal/errors:496
    ErrorCaptureStackTrace(err);
    ^

SystemError [ERR_TTY_INIT_FAILED]: TTY initialization failed: uv_tty_init returned EBADF (bad file descriptor)
    at new SystemError (node:internal/errors:256:5)
    at new NodeError (node:internal/errors:367:7)
    at new WriteStream (node:tty:93:11)
    at ED.prompt (file:///C:/Users/jonat/AppData/Local/npm-cache/_npx/50a6160ffc29bafc/node_modules/@clack/core/dist/index.mjs:9:693)
    at Module.ie (file:///C:/Users/jonat/AppData/Local/npm-cache/_npx/50a6160ffc29bafc/node_modules/@clack/prompts/dist/index.mjs:28:8)
    at template (file:///C:/Users/jonat/AppData/Local/npm-cache/_npx/50a6160ffc29bafc/node_modules/create-svelte/bin.js:48:6)
    at Module.he (file:///C:/Users/jonat/AppData/Local/npm-cache/_npx/50a6160ffc29bafc/node_modules/@clack/prompts/dist/index.mjs:77:632)
    at file:///C:/Users/jonat/AppData/Local/npm-cache/_npx/50a6160ffc29bafc/node_modules/create-svelte/bin.js:45:25
    at ModuleJob.run (node:internal/modules/esm/module_job:194:25) {
  code: 'ERR_TTY_INIT_FAILED',
  info: {
    errno: -4083,
    code: 'EBADF',
    message: 'bad file descriptor',
    syscall: 'uv_tty_init'
  },
  errno: [Getter/Setter],
  syscall: [Getter/Setter]
}

Node.js v18.18.0
npm ERR! code 1
npm ERR! path C:\a
npm ERR! command failed
npm ERR! command C:\WINDOWS\system32\cmd.exe /d /s /c create-svelte svelte-example

npm ERR! A complete log of this run can be found in: C:\Users\jonat\AppData\Local\npm-cache\_logs\2024-01-02T21_19_40_474Z-debug-0.log



:_ (!efnm)
