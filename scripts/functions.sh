#!/bin/bash
# Tema 4 parte 3 ejercicio 16 Functions

clear

function showMenu () {
    echo "";
    echo "Area and perimeters:";
    echo "1. From a square.";
    echo "2. From a rectangle.";
    echo "3. Of a circumference.";
    echo "0. Exit.";
}

function requestData () {
    echo "Enter an option";
}

function calculateBox () {
    echo -n "Tell me one side:"
    read side;
    echo "The area of ​​the square is: $(echo" scale = 2; $side * $side "| bc -l)";
    echo "The perimeter of the square is: $(echo" scale = 2; $side * 4 "| bc -l)";
}

function calculateRectangulo () {
    echo "";
    echo -n "Tell me the base of the rectangle:";
    read base;
    echo -n "Tell me the height of the rectangle:"
    read height;
    echo "";
    echo "The area of ​​the rectangle is: $(echo" scale = 2; $base * $height "| bc -l)";
    echo "The perimeter of the rectangle is: $(echo" scale = 2; (2 * $base) + (2 * $height) "| bc -l)";
}
function calculateCircumference () {
    echo "";
    echo -n "What is the radius of the circumference:";
    read radio;
    echo "";
    echo "The area of ​​the circumference is: $(echo" scale = 2; 3.1416 * $radius * $radius "| bc -l)";
    echo "The perimeter of the circumference is: $(echo" scale = 2; 2 * 3.1416 * $radius "| bc -l)";
}

function exit () {
    echo "Leaving ..."
    exit 0
}