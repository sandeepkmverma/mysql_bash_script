#!/bin/bash

check_install_mysql(){

rpm -qa | grep mysql &> /dev/null

if [ $? -eq 0 ]
then
echo "MySQL is already Installed"
else
echo "MySQL is not installed"
fi



}



