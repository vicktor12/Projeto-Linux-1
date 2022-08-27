#!/bin/bash

echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretorios criados"
echo "------------------"

echo "Criando grupos para alocar os usuarios..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos Criados"
echo "------------------"

echo "Criando usuarios e adicionando aos grupos..."
useradd carlos -m -s /bin/bash -c "Carlos Henrique" -G GRP_ADM
useradd maria -m -s /bin/bash -c "Maria Joaquina" -G GRP_ADM
useradd joao -m -s /bin/bash -c "Joao Marcos" -G GRP_ADM

useradd debora -m -s /bin/bash -c "Debora Souza" -G GRP_VEN
useradd sebastiana -m -s /bin/bash -c "Sebastiana Santos" -G GRP_VEN
useradd roberto -m -s /bin/bash -c "Roberto Almeida" -G GRP_VEN

useradd josefina -m -s /bin/bash -c "Josefina Silva" -G GRP_SEC
useradd amanda -m -s /bin/bash -c "Amanda Oliveira" -G GRP_SEC
useradd rogerio -m -s /bin/bash -c "Rogerio Magalhaes" -G GRP_SEC

echo "Usuario criados"
echo "--------------------"

echo "Defina uma senha padrao para cada usuario | Nao se preocupe, sera solicitado ao usuario que crie sua propria senha"
echo "Usuario - Carlos"
passwd carlos
passwd carlos -e
echo "Usuario - Maria"
passwd maria
passwd maria -e
echo "Usuario - Joao"
passwd joao
passwd joao -e
echo "Usuario - Debora"
passwd debora
passwd debora -e
echo "Usuario - Sebastiana"
passwd sebastiana
passwd sebastiana -e
echo "Usuario - Roberto"
passwd roberto
passwd roberto -e
echo "Usuario - Josefina"
passwd josefina
passwd josefina -e
echo "Usuario - Amanda"
passwd amanda
passwd amanda -e
echo "Usuario - Rogerio"
passwd rogerio
passwd rogerio -e

echo "Mudando permissoes das pastas e grupos"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Script finalizado"
