#!/bin/bash


# Array declare and initialize

myArray=( 1 20 35.0 Hello "Multiple values in a array" )

echo "Value in 0th index is :${myArray[0]}"
echo "Value in 3rd index is :${myArray[3]}"
echo "All the values in arrays are:${myArray[*]}"

# Length of an array or no of values in an array

echo "No. of values, length of an array is ${#myArray[*]}"

# Geting specific values from array

echo "Values from index 2-3 ${myArray[*]:2:2}"
echo "Values from index 2-4 ${myArray[*]:2:3}"

#Updating an array with new values

myArray+=( new 30 40 )
echo "Values of updated, new array ${myArray[*]}"

