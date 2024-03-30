#!/bin/bash

echo "Atualizando o Servidor..."

echo "Update"
apt-get update

echo "Upgrade"
apt-get upgrade -y

echo "Instalando o Apache"
apt-get install apache2 -y

echo "Instalando o Unzip"
apt-get install unzip -y

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio
cp -R * /var/www/html/

cd ~

echo "Finalizado"