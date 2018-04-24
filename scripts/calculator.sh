#!/bin/bash
# Tema 4 parte 3 ejercicio 


# Write a script that should receive three input parameters,
# these will be three real numbers.
# If the script does not receive three parameters it will be closed.
# If you receive them, it will show the user the following menu:

# Calculator
# 	s. Add the three numbers
# 	r. Subtract the three numbers
# 	m. Multiply the three numbers
# 	d. Divide the three numbers
# 	q. Get out
# 	0. To leave also

# If the option is incorrect, a message will be displayed and the script will be closed.
# Note: You must control that you can not divide by zero.

clear

if [ $# -ne 3 ]
then
	echo "Error, you must enter three input parameters."
	exit 1
fi

echo "Choose an option:";
echo "s Add the three numbers";
echo "r Subtract the three numbers";
echo "m Multiply the three numbers";
echo "d.Divide the three numbers";
echo "Exit";
echo "0. Exit too";

read option;

case $option in
	s)
		echo $(($1 + $2 + $3));
	;;
	r)
		echo $(($1- $2- $3));
	;;
	m)
		echo $(($1 * $2 * $3));
	;;
	d)
		if [ $1 -eq 0 ] || [ $2 -eq 0 ] || [ $3 -eq 0 ]
		then
			echo "Error, can not be divided by 0";
			echo "Leaving ...":
			exit 1
		fi
		echo $(($1 / $2 / $3));
	;;
	q)
		echo "Leaving ...";
		exit 0
	;;
	0)
		echo "Leaving ...";
		exit 0;
	;;
	*)
		echo "Error, incorrect option";
		echo "Leaving ...";
		exit 1;
esac