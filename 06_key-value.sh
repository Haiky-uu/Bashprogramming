#!/bin/bash

#How to store key value pairs in array


declare -A myArray #Array is declared 

myArray=( [name]=nishad [age]=22 [city]=satara )

echo "Name is ${myArray[name]}"
echo "Age is ${myArray[age]}"
echo "City is ${myArray[city]}"

echo "All info ${myArray[name]} ${myArray[age]} ${myArray[city]}"

echo "Length of array ${#myArray[*]}"
echo "Print array ${myArray[*]}"
