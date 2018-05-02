#!/bin/bash
# Tema 4 parte 3 ejercicio 20

# Define an array with the days that are 12 months of the year.
# The month of February will have 28 days.
# Once this is done, the script will ask the user for a day, a month and a year (in numeric) and check if the given date is valid.

# For it:
# - First check if the year is greater than or equal to 0, and if the month is greater than 0 and
# less than or equal to 12. Otherwise, it will give an error and it will close.

# - If everything is correct, it will look if the month is 2 (February) and if the year is a leap year.
# If yes, it will change the days of the month of February to 29 in the array.

# - Finally, check if the given day is greater than 0 and less than the number of
# days assigned to the given month. If everything is correct it will indicate that the dates are valid and
# will show the date by changing the month number by name. Otherwise, it will give an error and close.

clear

months=("31" "28" "31" "30" "31" "30" "31" "31" "30" "31" "30" "31");

read -p "Enter a day (numeric):" day;
read -p "Enter a month (numeric):" month;
read -p "Enter a year (numeric):" anio;

if [ $anio -lt 0 ] || [ $month -le ​​0 ] || [ $month -gt 12 ]
then
	echo "Error, it is not a valid date";
	exit 1
elif [ $month -eq 2 ] || [$((month % 4)) -eq 0 ]
then
	months[1]=29;
fi
 
if [ $dia -lt 0 ] || [ $dia -gt ${months[$month]} ]
then
	echo "Error, The day is not correct.";
	exit 1
fi

echo "The date is valid -> $day / $month / $year";

exit 0
