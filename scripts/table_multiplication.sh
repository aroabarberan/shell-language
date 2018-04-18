#!/bin/bash
# Tema 4 parte 3 ejercicio 

# The script should ask the user for a number.
# Then check if the number is greater than zero.
# Otherwise, it will give a warning and it will be closed.
# If the number is greater than zero, the script will show the multiplication table of that number. Use the
# loop you want.

clear

echo "Enter a number";
read num;

if [ $num -le 0 ]
then
	echo "Error. $ num is LESS than zero";
	exit 1;
fi

for ((i = 0; i <= 10; i ++))
do
	echo "$num x $i = $(($num * $i))";
done

exit 0
