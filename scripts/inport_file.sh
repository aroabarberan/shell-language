#!/bin/bash
# Tema 4 parte 3 exercise 16 Main

# Create a script with name: "functions.sh".
#And another one with the name: "import_file.sh".

# The function file has the functions of the exercise functions.sh.
# The main file, 'includes' with the operator '.' The previous file
# and has the main functionality of the script.
# In addition, you will modify the script so that the menu is displayed iteratively
# until the user types the option to exit.

clear

. functions.sh

option=-1;

while [ $option -ne 0 ]
do
    showMenu
    read option

    case $option in
        1)
            calculateCompare
        ;;
        2)
            calculateRectangle
        ;;
        3)
            calculate Circumference
        ;;
        0)
            exitMenu
        ;;
        *)
            echo "Option invalidates.";
        ;;
    esac
done

exit 0