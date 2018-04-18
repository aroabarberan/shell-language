#!/bin/bash
# Tema 4 parte 3 ejercicio 

# Build a script that you should ask the user
# a name of a directory and a name of a file (two input parameters).
# Then you must check if the given directory exists.
# If it does not exist it will give a warning and it will be closed.

# If it exists it must check if the given file is inside the directory and if it is a regular file.

# If it does not exist it will give a warning and it will be closed.
# If it exists, it will show one of the following messages:

# "The file has read, write and execute permissions."
# "The file has read and write permissions."
# "The file has read and execute permissions."
# "The file has write and execute permissions."
# "The file has read permissions."
# "The file has write permissions."
# "The file has execute permission."

clear

echo -n "Enter the name of a file:";
read file;
echo -n "Enter the name of a directory:";
read dir;

if [ ! -d $dir ]
then
	echo "Error. The directory does not exist.";
	exit 1;
fi

path=$dir/$file;

if [ ! -e "$path" ] && [ ! -f $file ]
then
	echo "Error. The file is not found in the path || It does not exist";
	exit 1
fi


if [ -r "$path" ]
then
	echo "The file has read permissions.";
elif [ -w "$path" ]
then
	echo "The file has write permissions.";
elif [ -x "$path" ]
then
	echo "The file has execution permissions.";
elif [ -r "$path" ] && [ -w "$path" ] && [ -x "$path" ]
then
	echo "The file has read, write and execute permissions."
elif [ -r "$path" ] && [ -w "$path" ]
then
	echo "The file has read and write permissions."
elif [ -r "$path" ] && [ -x "$path" ]
then
	echo "The file has read and execute permissions."
elif [ -w "$path" ] && [ -x "$path" ]
then
	echo "The file has write and execute permissions."
fi

exit 0
