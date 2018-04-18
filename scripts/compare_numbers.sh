#!/bin/bash
# Tema 4 parte 3 ejercicio 

# Develop a script that should ask the user for a number.
# Then check if the number is greater than or equal to zero.
# Otherwise, it will give a warning and it will be closed.

# If the number is greater than or equal to zero, the script will show
# all even numbers between 0 and the given number
# (including 0 and the given number).
# Use the while loop.

clear

echo -n "Enter a number:";
read num;

if [ ! $num -ge 0 ]
then
	echo "Error.The number must be greater than 0";
fi

cont=0;

while [ $cont -lt $num ]
do
	echo $cont;
	cont=$(($ cont + 2));
done

exit 0
