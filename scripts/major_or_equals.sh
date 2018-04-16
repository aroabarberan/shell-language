#!/bin/bash
# Tema 4 parte 3 ejercicio 

# Make a script that asks for two numbers to the user
# and indicate if the first number is
# minor, greater or equal to the second.

clear

echo -n "Enter a number:";
read num1;

echo -n "Enter another number:";
read num2;

if [$ num1 -ge $ num2]
then
echo "$ num1 is greater than or equal to $ num2";
else
echo "$ num1 is less than or equal to $ num2";
fi


exit 0
