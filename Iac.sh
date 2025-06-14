#!/bin/bash

echo "Gerando Diretorios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Gerando Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Gerando Usuários"

useradd carlos -m -s /bin/bash -p $ (openssl passwd -crypt Senha.25) -G GRP_ADM
useradd maria -m -s /bin/bash -p $ (openssl passwd -crypt Senha.25) -G GRP_ADM
useradd joao -m -s /bin/bash -p $ (openssl passwd -crypt Senha.25) -G GRP_ADM

useradd debora -m -s /bin/bash -p $ (openssl passwd -crypt Senha.24) -G GRP_VEN
useradd sebastiao -m -s /bin/bash -p $ (openssl passwd -crypt Senha.24) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $ (openssl passwd -crypt Senha.24) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $ (openssl passwd -crypt Senha.23) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $ (openssl passwd -crypt Senha.23) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $ (openssl passwd -crypt Senha.23) -G GRP_SEC

echo "Gerando Permissões"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Concluido"