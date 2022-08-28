#!/bin/bash

echo "Criando diretórios ..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos ...."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários..."
# não deu certo executar com a opção -crypt

useradd -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM carlos
useradd -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM maria
useradd -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM joao

useradd -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN debora
useradd -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN sebastiana
useradd -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN roberto

useradd -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC josefina
useradd -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC amanda
useradd -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC rogerio

echo "Alterando Dono do diretório e grupo ..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Alterando permissões ..."
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Fim!"

