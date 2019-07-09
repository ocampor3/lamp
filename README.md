![LAMP](/lamp.png)

Description
===========
[LAMP](https://lamp.sh/) is a powerful bash script for the installation of Apache + PHP + MySQL/MariaDB/Percona Server and so on. You can install Apache + PHP + MySQL/MariaDB/Percona Server in an very easy way, just need to choose what you want to install before installation. And all things will be done in few minutes.

Supported System
===============
- Debian-8.x
- Debian-9.x (recommend)
- Ubuntu-14.x
- Ubuntu-16.x
- Ubuntu-18.x (recommend)

Installation
============

- If your server system: Debian/Ubuntu
```bash
apt-get update && apt-get upgrade
apt-get -y install wget screen git
git clone https://github.com/ocampor3/lamp.git
cd lamp
chmod 755 *.sh
screen -S lamp
./lamp.sh
```



