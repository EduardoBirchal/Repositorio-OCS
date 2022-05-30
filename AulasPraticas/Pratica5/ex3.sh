#!/bin/bash
a=$[$1**2]
b=$[$2**2]
c=$[$3**2]

d=$[$a+$b+$c]
echo "scale=3; sqrt($d)" | bc
