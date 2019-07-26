#!/bin/bash
yum -y update
yum -y install wget
wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
rpm -ivh mysql-community-release-el7-5.noarch.rpm
yum -y update
yum -y install mysql-server
systemctl start mysqld
sleep 1s
mysql -u root <<-EOF
UPDATE mysql.user SET Password=PASSWORD('sandeep') WHERE User='root';
FLUSH PRIVILEGES;
EOF
