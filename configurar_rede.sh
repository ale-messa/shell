#!/bin/bash

cp /etc/network/interfaces /etc/network/interfaces_bkp #FAZ BACKUP DO ARQUIVO
rm -rf /etc/network/interfaces #REMOVE O ARQUIV PARA CRIAR UM NOVO

touch /etc/network/interfaces # CRIA UM NOVO

echo "auto eth0" >> /etc/network/interfaces #INSERE A PRIMEIRA LINHA DENTRO DO ARQUIVO INTERFACES
echo "iface eth0 inet dhcp" >> /etc/network/interfaces #INSERE A SEGUNDA LINHA DENTRO DO ARQUIVO INTERFACES

services networking restart #REINICIA O SERVIÇO DE REDE

hostname_old = $HOSTNAME #DEFINE VALOR NA VARIAVEL COM O NOME ATUAL DO PC

echo "Informe um novo nome para PC" #EXIBE NA TELA
read hostname_new #VARIAVEL

sed -i "2s/$hostname_old/$hostname/" /etc/hosts #ALTERA A LINHA 2 DO ARQUIVO HOSTS >>>>> EXEMPLO: sed -i "2s'LINHA2'/$hostname_old'VALOR A SER PROCURADO'/$hostname'VALOR A SUBSTITUIR/" /etc/hosts'ARQUIVO'
sed -i "1s/$hostname_old/$hostname/" /etc/hostname #ALTERA A LINHA 1 DO ARQUIVO HOSTNAME



