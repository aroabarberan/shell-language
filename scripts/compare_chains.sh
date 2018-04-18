#!/bin/bash
# Tema 4 parte 3 ejercicio 

# Develop a script that requests two strings from the user
# and indicate if the first string is
# (alphabetically) less, greater or equal than the second.

# Execute the script with this input data:
# 				Chain 1 			Chain 2
# Case 1 		hello 				wave
# Case 2 		hello 				Hello
# Case 3 		3 					three
# Case 4 		3 					3
# Case 4 		helloSinEsp			helloSinEsp
# Case 5 		hello with 			hello with esp

clear

echo -n "Enter a string:";
read string1;

echo -n "Enter another string:";
read string2;

if ["$ string1" == "$ string2"]
then
	echo "The string 1: ($ string1) is the same as the string 2: ($ string2)";
elif ["$ string1"> "$ string2"]
then
	echo "The string 1: ($ string1) is greater than or equal to the string 2: ($ string2)";
else
	echo "The string 1: ($ string1) is less than or equal to the string 2: ($ string2)";
fi

exit 0
