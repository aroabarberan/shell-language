#!/bin/bash

clear

string='Good afternoon';
echo $string;

echo -n 'Enter your name: ';
read name;

echo -n 'Enter your age: ';
read age;

echo 'Hello' $name 'you are' $age 'years old';
echo 'To day is';
echo $(date +%Y_%m_%d);

