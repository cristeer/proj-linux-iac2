#!/bin/bash

echo "Atualizando servidor"
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get unzip -y

echo "Baixando e atualizando servidor"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main

echo "Copiando arquivos para Apache"
cp -R * /var/www/html/
