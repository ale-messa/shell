#!/bin/bash

#ALEXSANDER SOARES MESSA PIRES
#LUCIMAR NEVES

echo "Insira o texto..." #EXIBIR NA TELA 'Insira o texto'
read text #Variavel que recebe o que o usuário digitar

echo -e "$text" >> texto.txt #Inseri linha por linha no arquivo 'texto.txt'

cat texto.txt | xargs -n 1 | grep . |  egrep -o '\w+' | sort | uniq -c | sort #Abri o arquivo 'texto.txt' e conta as palavras ordenando por ordem alfabetica

rm -rf texto.txt #Remove arquivo 'texto.txt' para nova criação
