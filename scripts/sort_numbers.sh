#!/bin/bash
# Tema 4 parte 3 ejercicio 24

# Create a script that receives an input parameter '-C' or '-D'.
# If you do not receive any parameter or receive a wrong one, it will give a warning and close.
# If everything is correct, the script will ask for three numbers and write the three numbers in decreasing order (-D) or increasing (-C).
# If all three numbers are the same, it will warn us about it.

clear

if [ $# -ne 1 ]
then
    echo "Error, you must enter a parameter.";
    exit 0
fi

if [ $1 != "-C" ] && [ $1 != "-D" ]
then
    echo "Error, the parameter entered is not valid";
    exit 0
fi

for ((i=0; i <3; i++))
do
    echo -n "Enter a number:";
    read num[$i];
done

if [ $1 == "-C" ]
then
    sort  <<(for a in "${num[@]}"; do echo "$a"; done | sort)
        
fi

if [ $1 == "-D" ]
then
    sort -r <<(for a in "${num[@]}"; do echo "$a"; done | sort)
fi

if [ ${num[0]} -eq ${num[1]} ] && [ ${num[0]} -eq ${num[2]} ]
then
    echo "Element 1 (${num[0]}), element 2 (${num[1]}) and element 3 (${num[2]}) are equal";
fi

exit 0
