#!/bin/bash
paralelepipedo () {
    a=$(echo "scale=2; $1 ^ 2" | bc) 
    b=$(echo "scale=2; $2 ^ 2" | bc)
    c=$(echo "scale=2; $3 ^ 2" | bc)

    d=$(echo "scale=2; $a + $b + $c" | bc)
    echo "scale=2; sqrt($d)" | bc
}

MDC () {
    mdc=1
    res=1

    while [ $mdc -le $1 ] && [ $mdc -le $2 ] && [ $mdc -le $3 ] # O divisor não pode ser maior que o dividendo
        do
        if [ $(($1%$mdc)) -eq 0 ] && [ $(($2%$mdc)) -eq 0 ] && [ $(($3%$mdc)) -eq 0 ] # Se todos forem divisíveis, transforma o MDC nesse número
            then
            res=$mdc
        fi
        mdc=$(($mdc+1))
        done
    echo "$res"
}

case $1 in
    paralelepipedo) paralelepipedo $2 $3 $4;;
    mdc) MDC $2 $3 $4;;
    *) echo "Opcao invalida" ;;
esac
