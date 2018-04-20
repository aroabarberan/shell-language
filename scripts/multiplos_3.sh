#!/bin/bash
#Tema 4 parte 3 exercise 21

# Make a script that writes all multiples of 3 between 1 and 3000.

Clear

for ((i = 1; i <3000; i ++))
do
    if [ $(($i% 3)) -eq 0 ]
    then
        echo $i;
    fi
done

exit 0