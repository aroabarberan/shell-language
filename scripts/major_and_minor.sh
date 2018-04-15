#!/bin/bash

# 
clear

echo "Inserte 10 numeros.";

for (( i=0; i <= 9; i++ ))
do
	echo -n "Numero" $i ": ";
	read numbers[$i];
done

major=${numbers[0]};
minor=${numbers[0]};

for (( j=0; j <= 9; j++ ))
do
	if [ $major -lt ${numbers[$j]} ]
	then
		major=${numbers[$j]};
	fi
	if [ $minor -gt ${numbers[$j]} ]
	then
		minor=${numbers[$j]};
	fi
done

if [ $major -eq $minor ]
then
	echo "The number major" $major "and the number minor" $minor "are equals";
fi

echo "The number major is" $major;
echo "The number minor is" $minor;
