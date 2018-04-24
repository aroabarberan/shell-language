#!/bin/bash
# Tema 4 parte 3 ejercicio 
# Create a script that should receive an input parameter.
# Then check if the input parameter is a directory.
# If it is not, it will give a warning and it will be closed.

# If it is (using a for loop) it will indicate the number of directories
# and the number of files inside that directory (only at the first level).

clear

if [ $# -ne 1 ]
then
	echo "Error, you must enter an input parameter";
elif [ ! -d $1 ]
then
	echo "Error.The parameter entered must be a directory";
fi

dir=$1;
numFile=0;
numDir=0;

for currentFile in $dir/*
do
	if [ -f $currentFile ]
	then
		numFile=$(($numFile + 1));
	elif [ -d $currentFile ]
	then
		numDir=$(($ numDir + 1));
	fi
done

echo "Total number of files within $dir: $numFile";
echo "Total number of directories within $dir: $numDir";

exit 0
