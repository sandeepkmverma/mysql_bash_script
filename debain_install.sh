#!/bin/bash
debain_install(){
apt-get update

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password sandeep'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password sandeep'

sudo apt-get -y install mysql-server
}
