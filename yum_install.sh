#!/bin/bash

yum_install_mysql(){

wget -P /opt https://repo.mysql.com/mysql80-community-release-el7-1.noarch.rpm

yum localinstall -y /opt/mysql80-community-release-el7-1.noarch.rpm

yum -y install mysql-community-server

systemctl start mysqld

systemctl enable mysqld

}

