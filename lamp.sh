#!/bin/bash
# ******************************************
# Program: LAMP Stack Installation Script
# Developer: Reigan Ocampo
# Date: 07-09-2019
# Last Updated:
# ******************************************
#   this is for Ubuntu or debian or any apt supported Linux OS
if [ "`lsb_release -is`" == "Ubuntu" ] || [ "`lsb_release -is`" == "Debian" ]
then
    sudo apt-get -y install mysql-server mysql-client mysql-workbench libmysqld-dev;
    sudo apt-get -y install apache2;
    sudo apt-get -y install php7.0 libapache2-mod-php7.0;
    sudo /etc/init.d/apache2 restart;
    sudo chmod 755 -R /var/www/;
    sudo printf "<?php\nphpinfo();\n?>" > /var/www/html/info.php;
    sudo apt-cache search php7.0;
    sudo apt-get -y install php7.0-mysql php7.0-curl php7.0-gd php7.0-intl php-pear php-imagick php7.0-imap php7.0-mcrypt php-memcache php7.0-pspell php7.0-recode php7.0-sqlite3 php7.0-tidy php7.0-xmlrpc php7.0-xsl;
    sudo /etc/init.d/apache2 restart;
    sudo apt-get -y install php7.0-opcache;
    sudo apt-get -y install php-apcu;
    sudo /etc/init.d/apache2 restart;

#this is for redhat centos or any yum supported linux OS 
#elif [ "`lsb_release -is`" == "CentOS" ] || [ "`lsb_release -is`" == "RedHat" ]
#then
    #sudo yum -y install httpd mysql-server mysql-devel php php-mysql php-fpm;
    #sudo yum -y install epel-release phpmyadmin rpm-build redhat-rpm-config;
    #sudo yum -y install mysql-community-release-el7-5.noarch.rpm proj;
    #sudo yum -y install tinyxml libzip mysql-workbench-community;
    #sudo chmod 777 -R /var/www/;
    #sudo printf "<?php\nphpinfo();\n?>" > /var/www/html/info.php;
    #sudo service mysqld restart;
    #sudo service httpd restart;
    #sudo chkconfig httpd on;
    #sudo chkconfig mysqld on;

#else
    #echo "Unsupported Operating System";
fi
