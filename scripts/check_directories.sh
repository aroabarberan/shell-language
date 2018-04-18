#!/bin/bash
# Tema 4 parte 3 ejercicio 

# Develop a script that asks the user for the name of two directories.
# Next it will show what the user has entered and
# will finally show one of the following messages to the user:

echo "$dir1 and $dir2 are directories."
echo "$dir1 is a directory, but $dir2 does not."
echo "$dir2 is a directory, but $dir1 does not."
echo "Neither $dir1 nor $dir2 are directories."

clear

echo -n "Enter the name of a directory:";
read dir1;

echo -n "Enter the name of another directory:";
read dir2;

if [ -d $dir1 ] && [ -d $dir2 ]
then
    echo "$dir1 and $dir2 are directories";
elif [ -d $dir1 ] && [ ! -d $dir2 ]
then
    echo "$dir1 is a directory, but $dir2 no.";
elif [ ! -d $dir1 ] && [ -d $dir2 ]
then
    echo "$dir2 is a directory, but $dir1 no.";
else
    echo "Neither $dir1 nor $dir2 are directories.";
fi

exit 0
