#!/bin/bash

echo "Atualizando Pacotes"
sudo apt update && sudo apt upgrade -y
clear

echo "Executando Navegador"
firefox https://youtube.com.br && https://udemy.com.br
clear

echo "Finalizado"