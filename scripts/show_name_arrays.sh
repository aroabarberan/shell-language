#!/bin/bash
# Tema 4 parte 3 Invented exercise

# show the name of the person who is from that province.
# If the script does not receive an input parameter, the script is cut.
clear

people=("Bea" "Fernando" "Carlos Javier");
provincias=("Toledo" "Albacete" "Ciudad Real");

province=$1;

if [ $# -ne 1 ]
then
    echo "Error, you must enter an input parameter";
    echo "Example: $ 0 ProvincialName";
    exit 1
fi

cont=0;
for ((i = 0; i <$ {# people [@]}; i ++))
do
    if [ "${provinces [$ i]}" == "$province" ]
    then
        cont=1;
    echo "The name of the person who lives in the province $ province is: $ {people [$ i]}";
    fi
done

if [ $cont -eq 0 ]
then
    echo "There is no person that is from $ province";
fi

exit 0