#!/bin/bash

<<comment
    Given three integers (x, y, and z) representing the three sides of a triangle, identify whether the triangle is scalene, isosceles, or equilateral.

    If all three sides are equal, output EQUILATERAL.
    Otherwise, if any two sides are equal, output ISOSCELES.
    Otherwise, output SCALENE.

comment

read -p "Enter value of X:" x
read -p "Enter value of y:" y
read -p "Enter value of z:" z

if [[ x -eq y ]] && [[ y -eq z ]]
then
    echo "EQUILATERAL"

elif [[ x -eq y ]] || [[ y -eq z ]] || [[ x -eq z ]]
then 
    echo "ISOSCELES"

else
    echo "SCALENE"
    
fi
