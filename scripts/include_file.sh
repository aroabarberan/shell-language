#!/bin/bash
# Tema 4 parte 3 ejercicio 02

clear

var1 = 8;
var2 = 8.75;
var3 = e;
var4 = "e";
var5 = "The value of variable 1 is $ var1";
var6 = "The value of variable 2 is $ var2";

echo $ var1;
echo $ var2;
echo $ var3;
echo $ var4;
echo $ var5;
echo $ var6;

echo "I will include the previous file.";
echo "This is not going to show the line later";
. special_characters.sh

echo "So if you are going to show the line later";
./special_characters.sh

echo "This line is shown.";

exit 0