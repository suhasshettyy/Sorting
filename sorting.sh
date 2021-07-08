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
for DATA in "${result[@]}"
do
	arr+=("${DATA##*:}")
done
echo "${arr[@]}"
temp=0
for ((i=0;i<=3;i++))
do
	for((j=0;j<=3;j++))
	do
		if (( ${arr[i]}<${arr[j]} ))
		then
			temp=${arr[i]}
			arr[i]=${arr[j]}
			arr[j]=$temp
		fi
	done
done
echo "${arr[@]}"
