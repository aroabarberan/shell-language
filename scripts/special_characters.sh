#!/bin/bash
# Tema 4 parte 3 ejercicio 01

clear

echo "Remember some of the special characters:"
echo "================================================================================="
echo "Comments: #";

#This is a comment;

echo "Command Separator:;";
ls -l ~; date


echo "Include:.";
echo "We'll see it in the next example";
echo "Quotation` `";
echo "I'm going to execute the command date:` date` ";
echo "Escape: \\";
echo "I'm going to execute the date:  \`date\`";
date

echo "Variable: '$'";
variable1 = "A string variable";
echo "The value of variable1 is: $ variable1";
variable2 = $ variable1;
echo "The value of variable2 is: $ variable2";
echo "Variables and commands: '$'";
variables3 = date;
echo "The value of variable3 is: $ variable3";
echo variable4 = $ (date);
echo "The value of variable4 is: $ variable4";
echo "Home: ~";
ls ~


echo "Some environment variables:";
echo "========================";
echo '1. $ HOME: '$ HOME;
echo '2 $ PATH: '$ PATH;
echo '3 $ PWD: '$ PWD;
echo '4 $ UID: '$ UID;

echo "And many more";
exit 0