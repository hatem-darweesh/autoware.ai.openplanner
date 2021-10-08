#! /bin/bash
branch_name=$1
echo "-------------------------------"
echo " Pulling All Autoware Projects"
echo "-------------------------------"
cd src/autoware/common/
git remote set-url origin https://github.com/hatem-darweesh/common.git
git pull
git checkout $branch_name
cd ../core_perception/
git remote set-url origin https://github.com/hatem-darweesh/core_perception.git
git pull
git checkout $branch_name
cd ../core_planning/
git remote set-url origin https://github.com/hatem-darweesh/core_planning.git
git pull
git checkout $branch_name
cd ../utilities/
git remote set-url origin https://github.com/hatem-darweesh/utilities.git
git pull
git checkout $branch_name
cd ../../../
