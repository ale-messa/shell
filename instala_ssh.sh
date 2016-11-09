#!/bin/bash




apt-get install openssh-server #INSTALA O SERVIÇO

sed -i "25s/Porta: 22/Porta: 1000/" /etc/ssh/ssh.conf #ALTERA A LINHA 25 DO ARQUIVO SSH.CONF

services openssh restart #REINICIA O SERVIÇO DE SSH

