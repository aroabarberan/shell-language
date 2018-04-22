#!/bin/bash
# Tema 4 parte 3 exercise 

# Order numbers until the user of two equal whole numbers.

clear

exit=0;


while [ $exit -ne 1 ]
do
    echo -n "Give me two numbers:";
    read number1;
    read number2;

    if [ $number1 -eq $number2 ]
    then
        echo "They are the same";
        exit=1;
    else
        echo "They are not the same";
    fi
done


#Compare with real numbers

areEqual=$(echo "$number1 == $ 2" | bc -l);
# This returns two values: 0 => not met, 1 => if met

while [ $areEqual -ne 1 ]
do
    echo -n "Give me two numbers:";
    read number1;
    read number2;

    if [ $number1 -eq $number2 ]
    then
        echo "They are the same";
        areEqual=1;
    else
        echo "They are not the same";
    fi
done

exit 0