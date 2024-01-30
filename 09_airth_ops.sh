#!/bin/bash

#Arithmatic operations


read -p "Enter first number:" a
read -p "Enter second number:" b
sleep 2

echo "Using let command"
sleep 2
let add=$a+$b
echo "Addition: $add"

let sub=$a-$b
echo "Substration: $sub"

let mul=$a*$b
echo "Multiplication: $mul"

let div=$a/$b
echo "Division: $div"

sleep 1

echo "using \$(()) brackets"

sleep 2

echo "Addition is $(($a+$b))"
echo "Substration is $(($a-$b))"
echo "Multiplication is $(($a*$b))"
echo "Division is $(($a/$b))"

