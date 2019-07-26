#!/bin/bash

mysql -sfu root -psandeep < "mysql_secure_installation.sql"
echo "MySQL_Secure_Installation is done"
