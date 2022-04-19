#!/bin/bash
read -a str

echo $str | rev

echo $str | rev | tr 'a-zA-Z' 'b-zA-Za'
n=${#str}

for((i=$n/2-1; i>=0; i--))
do
	echo -n "${str:i:1}"
done

for((i=$n/2; i<= $n; i++))
do
	echo -n "${str:i:1}"
done

