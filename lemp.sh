#!/bin/bash
#
# LEMP Install: Linux NGINX MySQL PHP
#


sudo apt-get update

sudo apt-get install mysql-server php5-mysql -y
sudo mysql_install_db
sudo /usr/bin/mysql_secure_installation

sudo apt-get install nginx
sudo service nginx start

sudo apt-get install php5-fpm

