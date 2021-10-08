#! /bin/bash
branch_name=$1
echo "-------------------------------"
echo " Pulling All Autoware Projects"
echo "-------------------------------"
cd src/autoware/common/
git pull origin $branch_name
cd ../core_perception/
git pull origin $branch_name
cd ../core_planning/
git pull origin $branch_name
cd ../utilities/
git pull origin $branch_name
cd ../../../
