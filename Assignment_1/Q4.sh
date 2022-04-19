#!/bin/bash

read -a arr

x="${#arr[@]}"

for((i=0; i<$x;i++))
do
	for((j=0; j<$x-$i-1; j++))
	do
	 if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done

echo ${arr[*]}
