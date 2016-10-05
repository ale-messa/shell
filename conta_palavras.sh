#!/bin/bash

#ALEXSANDER SOARES MESSA PIRES
#LUCIMAR NEVES

echo "Insira o texto..."
read text

echo -e "$text" >> texto.txt

cat texto.txt | xargs -n 1 | grep . |  egrep -o '\w+' | sort | uniq -c | sort

rm -rf texto.txt
