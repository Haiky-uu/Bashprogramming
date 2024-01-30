#!/bin/bash

#here i wrote the code again because in previous code i cannot call the cases within them 
#so i can't do allfun() function to do all calculations at once here i can like this by defining functions first and then call them in cases later

read -p "Enter First Number=" first
read -p "Enter Second Number=" second

echo "Choose and option"
echo "1= Addition"
echo "2= Substraction"
echo "3= Multiplication"
echo "4= Division "
echo "5= All calculations"
read choice


		function addition(){

			let sum=$first+$second
			echo "Addition of $first and $second is=$sum"

			}
			
			
		function substraction(){

			let sum=$first-$second
			echo "Substraction of $first and $second is=$sum"

		       }
			
			
			
		function multiplication(){

			let sum=$first*$second
			echo "Multiplication of $first and $second is=$sum"

			}
			

			
		function division(){

			let sum=$first/$second
			echo "Divison of $first and $second is=$sum"

			}
			
		function allfun(){

			addition
			substraction
			multiplication
			division
			
		}
case $choice in
	
	1)
		addition;;
	2)
		substraction;;
	3)
		multiplication;;
	4)
		division;;
	5)
		allfun;;
esac



