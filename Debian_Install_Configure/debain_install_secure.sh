#!/bin/bash
debain_install_secure(){
mysql -sfu root -psandeep < "mysql_secure_installation.sql"
echo "MySQL_Secure_Installation is done"
}
