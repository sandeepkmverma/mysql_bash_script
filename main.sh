#!/bin/bash
source CentOS_Install_Configure/redhat_install.sh
source CentOS_Install_Configure/redhat_install_secure.sh
source check_install_mysql.sh
source check_linux_distro.sh
source Debian_Install_Configure/debain_install_secure.sh
source Debian_Install_Configure/debain_install.sh

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

