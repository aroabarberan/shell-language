#!/bin/bash
# Tema 4 parte 3 ejercicio 

# Develop a script that defines two variables and assign them an integer value.
# Next, test the following operators with these variables: + - * /%
# showing the result by screen.

#Finally define two other variables and assign them a real value. Try the following
#operators with these variables: + - * / showing the result by screen. (Use: bc -l)

#Remember: In operations with real numbers, the module (%) or rest of the division
#is always 0 or tends to 0 and it does not make sense to calculate it.

clear

numEntero1 = 4;
numEntero2 = 6;

echo "Operations with integers";
echo "$(($numEntero1 + $numEntero2))";
echo "$(($numEntero1 - $numEntero2))";
echo "$(($numEntero1 * $numEntero2))";
echo "$(($numEntero1 / $numEntero2))";
echo "$(($numEntero1 % $numEntero2))";

numReal1 = 1.2;
numReal2 = 2.1;

echo "Operations with real numbers";
echo $(echo "scale = 2; $numReal1 + $numReal2" | bc -l);
echo $(echo "scale = 2; $numReal1 - $numReal2" | bc -l);
echo $(echo "scale = 2; $numReal1 * $numReal2" | bc -l);
echo $(echo "scale = 2; $numReal1 / $numReal2" | bc -l);
echo $(echo "scale = 2; $numReal1 % $numReal2" | bc -l);

exit 0