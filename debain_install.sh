#!/bin/bash

apt-get update

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password sanny'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password sanny'

sudo apt-get -y install mysql-server
