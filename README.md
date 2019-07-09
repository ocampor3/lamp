# LAMP How to Install

apt-get update && apt-get upgrade
apt-get -y install wget screen git
git clone https://github.com/ocampor3/lamp.git
cd lamp
chmod 755 *.sh
screen -S lamp
./lamp.sh
