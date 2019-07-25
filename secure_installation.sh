#!/bin/bash

# Get the temporary password
temp_password=$(grep password /var/log/mysqld.log | awk '{print $NF}')

# Set up a batch file with the SQL commands
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY 'sanny'; flush privileges;" > reset_pass.sql

# Log in to the server with the temporary password, and pass the SQL file to it.
mysql -u root --password="$temp_password" --connect-expired-password < reset_pass.sql




# Get the temporary password
#temp_password=$(grep password /var/log/mysqld.log | awk '{print $NF}')

# Set up a batch file with the SQL commands
#echo "ALTER USER 'root'@'localhost' IDENTIFIED BY 'sanny'; flush privileges;" > reset_pass.sql
#
## Log in to the server with the temporary password, and pass the SQL file to it.
#mysql -u root --password="$temp_password" --connect-expired-password < reset_pass.sql



#mysqladmin -u root password "$DATABASE_PASS"
#mysql -u root -p"$DATABASE_PASS" -e "UPDATE mysql.user SET Password=PASSWORD('$DATABASE_PASS') WHERE User='root'"
#mysql -u root -p"$DATABASE_PASS" -e "DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1')"
#mysql -u root -p"$DATABASE_PASS" -e "DELETE FROM mysql.user WHERE User=''"
#mysql -u root -p"$DATABASE_PASS" -e "DELETE FROM mysql.db WHERE Db='test' OR Db='test\_%'"
#mysql -u root -p"$DATABASE_PASS" -e "FLUSH PRIVILEGES"



