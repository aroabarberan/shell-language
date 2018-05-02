#!/bin/bash
# Tema 4 parte 3 ejercicio 18

# Create a script that will ask for the name of two files to the user and a number of words.
# Next, you will write in file 2 only those lines in file 1 that have a number
# of words greater than or equal to the order. There is a command that allows you to count words.


clear

function requestData() {
	echo -n "Enter the name of a file:";
	read file1;
	echo -n "Enter the name of another file:";
	read file2;
	echo -n "Enter a number of words:";
	read number;
}
requestData

while read line
do
	if [ $(echo $line | wc -w) -ge $number ]
	then
	echo "$line" >> $file2;
	fi
	#echo "THIS LINE -> $line <- has $(echo $line | wc -w) words";
done < $file1

cat $file2

exit 0
