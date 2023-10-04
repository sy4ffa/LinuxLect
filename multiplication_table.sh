#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Invalid Input"
	exit 1
fi

rows=$1
columns=$2

if ! [[ "$rows" =~ ^[1-9]+$ ]] || ! [[ "$columns" =~ ^[1-9]+$ ]]; then
	echo "Both must be positive integers."
	exit 1
fi

for ((i = 1; i <=rows; i++)); do 
	for ((j = 1; j <= columns; j++)) do
		result=$((i*j))
		printf "%d*%d=%-3d " "$i" "$j" "$result"	
done
	echo
done
