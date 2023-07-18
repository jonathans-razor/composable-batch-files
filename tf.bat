:_

@echo off



:_

set cbf-filep=* Perform Terraform-related tasks.



:_

set fp=* Route callers.

if "%~1" == "" goto help s

if "%~1" == "?" goto help

goto %1



:_

:help

echo.
echo %cbf-filep%

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Function you wish to run.
set parameter_1=%parameter_1% 

echo.
echo %parameter_1%

exit/b



:_

:ver

:vers

set fp=* Get the Terraform version number.

rem lu: Oct-29-2018

echo.
echo %fp%

echo.
terraform version

exit/b



:_

:plan_experimental

set fp=* Check Terraform plan status.

rem lu: Oct-29-2018

echo.
echo %fp%

echo.
terraform plan

exit/b



:_

:plan_chapter_2

set fp=* This execution plan can be reviewed prior to running apply to get a sense for what ^
Terraform will do.

rem lu: Oct-29-2018

echo.
echo %fp%

echo.
terraform plan -var-file="%tfkeys%\terraform.tfvars" -var "private_key_path=%tfkeys%\TerraformTest2.pem" -no-color

rem Old Way
rem terraform plan -var-file="..\terraform.tfvars" -no-color

exit/b



:_

:destroy_chapter_2

set fp=* Destroy a plan.

rem lu: Oct-29-2018

echo.
echo %fp%

echo.
terraform destroy -var-file="%tfkeys%\terraform.tfvars" -var "private_key_path=%tfkeys%\TerraformTest2.pem" -no-color -auto-approve

rem Old Way
rem terraform destroy -var-file="..\terraform.tfvars" -no-color -auto-approve

exit/b



:_

:apply_chapter_2

set fp=* Execute a plan!

rem lu: Oct-29-2018

echo.
echo %fp%

echo.
terraform apply -var-file="%tfkeys%\terraform.tfvars" -var "private_key_path=%tfkeys%\TerraformTest2.pem" -no-color -auto-approve

exit/b



:_+ Main Parts 12

rem The purpose of folder 12 was to try and do some the of the same Terrraform work I had been
rem doing on my personal AWS account but now do it on my AWS work account. I don't think I can 
rem achieve this currently because my AWS work account does not have programmatic access, 
rem which comes with the AWS access and secret keys, which I need for Terraform.


::_

:plan12

set fp=* Plan.

rem lu: Oct-30-2018

echo.
echo %fp%

echo.
terraform plan -var-file="%tfkeys%\terraform12.tfvars" -var "private_key_path=%tfkeys%\Cart_Test.pem" -no-color

exit/b



::_

:apply12

set fp=* Apply.

rem lu: Oct-30-2018

echo.
echo %fp%

echo.
terraform apply -var-file="%tfkeys%\terraform12.tfvars" -var "private_key_path=%tfkeys%\Cart_Test.pem" -no-color -auto-approve

exit/b



::_

:destroy12

set fp=* Destroy.

rem lu: Oct-30-2018

echo.
echo %fp%

echo.
terraform destroy -var-file="%tfkeys%\terraform12.tfvars" -var "private_key_path=%tfkeys%\Cart_Test.pem" -no-color -auto-approve

exit/b



:_

:check_tf_existence

set fp=* Check the current folder for the presence of Terraform file(s).

rem lu: Oct-31-2018

echo.
echo %fp%

if not exist *.tf (
  echo.
  echo * Error: No Terraform files exist in the current folder.
  exit/b 1
)

exit/b 0



:_

:cons

:console

:repl

set fp=* Terraform console.

rem lu: Nov-1-2018

echo.
echo %fp%

call %0 check_tf_existence

if %errorlevel% == 1 (
  exit/b
)

echo.
terraform console

exit/b



:_

:fmt

set fp=* Format tf file.

rem lu: Nov-1-2018

echo.
echo %fp%

call %0 check_tf_existence

if %errorlevel% == 1 (
  exit/b
)

echo.
terraform fmt

exit/b



:_

:refresh

set fp=* Refresh state file.

rem lu: Nov-1-2018

echo.
echo %fp%

call %0 check_tf_existence

if %errorlevel% == 1 (
  exit/b
)

echo.
terraform refresh

exit/b



:_

:taint

set fp=* Manually mark a resource for recreation.

rem lu: Nov-1-2018

echo.
echo %fp%

call %0 check_tf_existence

if %errorlevel% == 1 (
  exit/b
)

echo.
terraform taint

exit/b



:_+ Main Parts



::_

:d

:dest

:destroy

set fp=* Destroy.

rem lu: Oct-30-2018

echo.
echo %fp%

call %0 check_tf_existence

if %errorlevel% == 1 (
  exit/b
)

echo.
terraform destroy -var-file="%tfkeys%\terraform.tfvars" -var "private_key_path=%tfkeys%\TerraformTest2.pem" -no-color -auto-approve

exit/b



:_

:init_old

set fp=* Initialize Terraform. This downloads necessary or missing plugins, e.g. from ^
Hashicorp. This worked from the "dv" folder.

rem lu: Jun-20-2019

echo.
echo %fp%

call t ci

cd dv

call %0 check_tf_existence

if %errorlevel% == 1 (
  exit/b
)

rem app-ec2

rem It seems like if you want a new instance, you should run from the "dv" folder and enter 
rem "no" when asked about copying state. If you want to modify an existing instance, run
rem the init command from the "app-ec2" folder.

echo.
terraform init -no-color

exit/b



:_+ Consumers



::_

:plan_amq

set fp=* Init AMQ.

rem lu: Nov-11-2019

echo.
echo %fp%

call t mqfq

call :plan

exit/b



::_

:appl_amq

set fp=* Apply AMQ.

rem lu: Nov-11-2019

echo.
echo %fp%

call t mqfq

call :appl

exit/b



:_+ Main Parts II



::_

:init

set fp=* Initialize, which picks up the settings from the current folder.

rem lu: Jan-16-2020

echo.
echo %fp%

call m specific_file_presence main.tf

if %errorlevel% == 1 (
  exit/b
)

call m delete_folder_if_present .terraform

echo.
terraform init -no-color

exit/b

Jan-16-2020: This worked from the sr55 folder. Initially I got this error:

Error downloading modules: Error loading modules: module app-ec2: No Terraform configuration 
files found in directory: .terraform\modules\be80f8e43d2dfa71239e19e2f064fc8f

Then when I deleted the .terraform folder that was in the sr55 folder,  the error went away.

It seems like if you want a new instance, you should run from the "dv" folder and enter "no" 
when asked about copying state. If you want to modify an existing instance, run the init 
command from the "app-ec2" folder.

This downloads necessary or missing plugins, e.g. from ^ Hashicorp. This worked from the "dv" 
folder. You may need to disconnect from the VPN prior to running this command.

exit/b



::_

:p

:plan

set fp=* Plan.

rem lu: May-24-2019

echo.
echo %fp%

call m specific_file_presence main.tf

if %errorlevel% == 1 (
  exit/b
)

call n pems

@echo on
terraform plan -var "private_key_path=%cbf-pt%\cart-np-key.pem" -no-color
@echo off

exit/b

Picks up settings from the current folder.

Be sure to cd into the folder who's configuration you'd like to run, e. g. fqsl.

This worked from the "dv" folder.

exit/b



::_

:a

:appl

:apply

set fp=* Apply.

rem lu: Jan-16-2020

echo.
echo %fp%

call m specific_file_presence main.tf

if %errorlevel% == 1 (
  exit/b
)

call n pems

@echo on
terraform apply -var "private_key_path=%cbf-pt%\cart-np-key.pem" -no-color
@echo off

exit/b

Picks up settings from the current folder.

exit/b



:_ (!rfsp) (mov-6)
