#!/bin/bash
# Tema 4 parte 3 ejercicio BubbleSort

clear

numbers=(9 2 4 1 8 22 5 3 );

echo ${numbers[*]};


for ((i=0; i<${#numbers[@]}; i++))
do
	for ((j=0; j<${#numbers[@]}; j++))
	do
		if [ ${numbers[$i]} -gt ${numbers[$j]} ]
		then
			temp=${numbers[$i]};
			numbers[$i]=${numbers[$j]}
			numbers[$j]=$temp;
		fi
	done
done

echo ${numbers[*]};

for ((i=0; i<${#numbers[@]}; i++))
do
	for ((j=0; j<${#numbers[@]}; j++))
	do
		if [ ${numbers[$i]} -lt ${numbers[$j]} ]
		then
			temp=${numbers[$i]};
			numbers[$i]=${numbers[$j]}
			numbers[$j]=$temp;
		fi
	done
done

echo ${numbers[*]};


exit 0
