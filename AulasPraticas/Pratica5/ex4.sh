#!/bin/bash
num=1
den=0
mult=-1
res=0
s=0

for i in $(seq 1 50); # Função de for, 50 vezes
do
	# O numerador é igual ao fatorial de i
	num=1
	for n in $(seq 1 $i);
	do
	    num=$(echo "$num * $n" | bc)
	done

	# O denominador é igual ao denominador anterior mais 2 elevado a (i-1)
	a=$(echo "scale=6; $i - 1" | bc)
	n=$(echo "scale=6; 2 ^ $a" | bc)
	den=$(echo "scale=6; $den + $n" | bc)

	mult=$(echo "scale=6; (-1) ^ ($a)" | bc) # A fração é negativa se for par e positiva se for ímpar
	num=$(echo "scale=6; $num * $mult" | bc) # Multiplica o numerador pelo multiplicador pra determinar o sinal da fração
	res=$(echo "scale=6; $num / $den" | bc) # Pega a fração
	s=$(echo "scale=6; $s + $res" | bc) # Finalmente, soma o resultado da fração com o S
	echo "$i resultado: $s"
done
