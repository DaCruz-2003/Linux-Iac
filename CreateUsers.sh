#!/bin/bash


echo "Criando usuários do sistema..."

useradd guest01 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd guest01 -e

useradd guest02 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd guest02 -e

useradd guest03 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd guest03 -e

useradd guest04 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd guest04 -e

echo "Finish"