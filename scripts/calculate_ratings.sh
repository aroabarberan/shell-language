#!/bin/bash
# Tema 4 parte 3 exercise 22

# Create a script that receives two input parameters.
# The first is the name of a text file where the data will be stored and the second is a number (NUM).
# We assume that the user gives us a correct route and a correct number. If the file exists, it will be deleted.

# Next, the script will ask for the names of NUM students and two notes per student.
# A note will be the note that the student has taken in the test and the other in the daily work.
# All this will be stored in three arrays (aNombre, aNoteTest and aNoteWork).

# Next, the script must calculate the final grades.
# The final grade for each student is calculated according to the following criteria:
# the qualification in the test is worth 60% and the qualification in the daily work is worth 40%.

# In turn will keep the data in the file using the
# following format:
# Name1; note11; note12; endnote1
# Name2; note21; note22; endnote2
# ...

# Finally, the% of students who fail and the percentage of students approved will be displayed on the screen.

clear

if [ $# -ne ]
then
	echo "Error, you must enter two input parameters.";
	exit 1
fi

file=$1;
num=$2;

if [ -f $file ]
then
	rm $file
fi
approved=0;
failures=0;

for ((i = 0; i <$num; i ++))
do
	echo -n "Student's name:";
	read aNames[$i];
	echo -n "Student's test note ${anombres[$i]}";
	read aNoteTest[$i];
	echo -n "Note of student work ${anombres[$i]}";
	read aNoteWork[$i];

	endFinal[$i]=$(echo "scale = 2; (${to Test Note[$i]} * 0.60) + (${to Work Note[$i]} * 0.40)" | bc -l);

	if [ $(echo "${endFinal[$i]}> = 5.00" | bc) -eq 1 ]
	then
		approved = $ (($ approved + 1));
	fi
	echo "${aNombre[$i]}; ${aNoteTrue[$i]}; ${aNoteWork[$i]}; ${finalFinal[$i]}" >> $file;
done

approvedPercentage=$(echo "scale = 2; $approved * 100 / ${#aName[@]}" | bc -l);
percentageSuspenses=$(echo "scale = 2; 100 - $percentageApproved" | bc -l);
echo "The percentage of approved is $Perceived%";
echo "The percentage of suspensions is of $%Suspensos%";

exit 0