#!/bin/bash
paralelepipedo () {
    a=$[$2**2]
    b=$[$3**2]
    c=$[$4**2]

    d=$[$a+$b+$c]
    echo "scale=3; sqrt($d)" | bc
}

case $1 in
paralelepipedo) paralelepipedo ;;
*) echo "Opcao invalida" ;;
esac
