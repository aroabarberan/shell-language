#!/bin/bash

clear

echo -n 'Enter age: ';
read age;

echo -n 'Enter course (first/second): ';
read course;

if [ $course == 'first' ]
then
	echo 'Enter 3 notes with decimals:';
	echo -n 'Note of the first quarter of a first: ';
	read note1;
	echo -n 'Note of the second quarter of a first: ';
	read note2;
	echo -n 'Note of the third quarter of a first: ';
	read note3;
	
	sum=$(echo "scale=2; $note1 + $note2 + $note3" | bc -l);
	average=$(echo "scale=2; $sum / 3" | bc -l);
	
	echo 'Your average rating is' $average 'points';
	echo 'If you are a worker, you can finish your studies with ' $(($age+1)) 'years';
fi

if [ $course == 'second' ]
then
	echo 'Enter 2 notes with decimals:';
	echo -n 'Note of the first quarter of a second: ';
	read note1;
	echo -n 'Note of the second quarter of a second:';
	read note2;
	
	sum=$(echo "scale=2; $note1 + $note2" | bc -l);
	average=$(echo "scale=2; $sum / 2" | bc -l);
	
	echo 'Your average rating is' $average 'points';
	echo 'If you are a worker, you can finish your studies with' $age 'anios';
fi
exit 0
