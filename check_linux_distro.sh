#!/bin/bash
check_linux_distro(){

if ! which apt &> /dev/null
then 
	echo "yum"

elif ! which yum &> /dev/null	
then
	echo "apt"
else
	echo "System not specified"
fi

}
