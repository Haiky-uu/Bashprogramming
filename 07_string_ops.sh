#!/bin/bash

myVar="Hello Roy, How are you?"

echo "My var is $myVar"

length=${#myVar}  #Storing the length of string in length variable and then print

echo "Length of myvar is $length " 

echo "Upper case ===== ${myVar^^}" # Printing in upper case myVar string
echo "Lower case ===== ${myVar,,}" # Printing in lower case myVar string

# Replacing a value from the variable

replace=${myVar/Roy/Alpha}
echo "After replace == $replace"

echo "New var is ==== ${myVar/Roy/Paul}"

# slicing the string

echo "After sclicing: ${myVar:6:17}"



