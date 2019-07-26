#!/bin/bash
source check_install_mysql.sh
source check_linux_distro.sh
source debain_install_secure.sh
source debain_install.sh
source mysql_start.sh
source redhat_install_secure.sh
source redhat_install.sh

main(){

        if [ $(check_linux_distro) == 'yum' ]
	then 
		check_install_mysql
		redhat_install
               redhat_install_secure

	elif [ $(check_linux_distro) == 'apt' ]
	then
		check_install_mysql
		debain_install
		debain_install_secure
		
	else
		echo "Sytem not Specified"
	fi
}

