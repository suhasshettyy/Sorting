#!/bin/bash -x
declare -a result
read -p "Enter a value:" a
read -p "Enter b value:" b
read -p "Enter c value:" c
echo $a,$b,$c
z1=$((a+b*c))
z2=$((a*b+c))
z3=$((c+a/b))
z4=$((a%b+c))
result[counter++]="$z1"
result[counter++]="$z2"
result[counter++]="$z3"
result[counter++]="$z4"
echo "All keys:" ${!result[@]}
echo "All results:" ${result[@]}

