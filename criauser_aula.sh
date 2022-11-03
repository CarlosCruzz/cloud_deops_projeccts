#! /bin/bash

#CRIANDO GRUPOS#
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

#CRIANDO USUARIOS#

useradd vitor -g GRP_ADM -s /bin/bash -m -p $(openssl passwd -5 Senha123)

useradd maria -g GRP_ADM -s /bin/bash -m -p $(openssl passwd -5 Senha123)

useradd joao -g GRP_ADM -s /bin/bash -m -p $(openssl passwd -5 Senha123)

useradd debora -g GRP_VEN -s /bin/bash -m -p $(openssl passwd -5 Senha123)

useradd sebastiana -g GRP_VEN -s /bin/bash -m -p $(openssl passwd -5 Senha123)

useradd roberto -g GRP_VEN -s /bin/bash -m -p $(openssl passwd -5 Senha123)

useradd josefina -g GRP_SEC -s /bin/bash -m -p $(openssl passwd -5 Senha123)

useradd amanda -g GRP_SEC -s /bin/bash -m -p $(openssl passwd -5 Senha123)

useradd rogerio -g GRP_SEC -s /bin/bash -m -p $(openssl passwd -5 Senha123)

#CRIANDO DIRETÓRIOS#

mkdir -m 777 /publico
mkdir -m 770 /ven
mkdir -m 770 /adm
mkdir -m 770 /sec

#ALTERANDO O GRUPO PERTENCENTE DE CADA DIRETÓRIO#
chgrp GRP_VEN /ven 
chgrp GRP_ADM /adm 
chgrp GRP_SEC /sec 
