#!/usr/bin/env bash

sudo -s

DBHOST=localhost
DBNAME=ttc
DBUSER=ttcuser
DBPASSWD=test123

echo "mysql-server mysql-server/root_password password $DBPASSWD" | debconf-set-selections
echo "mysql-server mysql-server/root_password_again password $DBPASSWD" | debconf-set-selections

apt-get update
apt-get -y install mysql-server-5.5 #> /dev/null 2>&1

mysql -uroot -p$DBPASSWD -e "CREATE DATABASE $DBNAME"
mysql -uroot -p$DBPASSWD -e "CREATE USER '$DBUSER'@'localhost' IDENTIFIED BY '$DBPASSWD'"
mysql -uroot -p$DBPASSWD -e "grant all privileges on $DBNAME.* to '$DBUSER'@'localhost' identified by '$DBPASSWD'"
mysql -uroot -p$DBPASSWD -e "CREATE USER '$DBUSER'@'%' IDENTIFIED BY '$DBPASSWD'"
mysql -uroot -p$DBPASSWD -e "grant all privileges on $DBNAME.* to '$DBUSER'@'%' identified by '$DBPASSWD'"

sed -i "s/^bind-address/#bind-address/" /etc/mysql/my.cnf
sudo /etc/init.d/mysql restart

echo "MYSQL USER: $DBUSER, PWD: $DBPASSWD, PORT: 33060 and DATABASE: $DBNAME"

# login after `vagrant ssh`:
# mysql --user=ttcuser --password=test123