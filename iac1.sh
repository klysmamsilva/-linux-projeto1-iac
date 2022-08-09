#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd luke -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd kylo -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd rey -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd leia -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd finn -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd rose -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd snoke -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd hux -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd phasma -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 880 /adm
chmod 880 /ven
chmod 880 /sec
chmod 888 /publico

echo "Fim....."
