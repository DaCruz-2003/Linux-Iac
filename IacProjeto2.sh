#!/bin/bash

#Atualizando o Servidor
apt-get update && apt-get upgrade -y

#Instalando o Apache-2 e unzip
apt-get install apache2 unzip -y

#Instalando a Aplicação e copiando para o Apache-2
cd /temp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/