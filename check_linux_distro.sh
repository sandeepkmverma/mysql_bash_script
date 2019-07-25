#!/bin/bash
linux_dis_check(){

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
