#!/bin/bash




until [[ $a == "No"]]  
do

read -p "Enter First Number=" first
read -p "Enter Second Number=" second

echo "Choose and option"
echo "Add= Addition"
echo "Sub= Substraction"
echo "Mul= Multiplication"
echo "Div= Division "
read choice


case $choice in
	Add)
		 function addition(){

			let sum=$first+$second
			echo "Addition of $first and $second is=$sum"

			}
			addition;;
	Sub)			
		substraction(){

			let sum=$first-$second
			echo "Substraction of $first and $second is=$sum"

		        }
			substraction;;
			
	Mul)			
		multiplication(){

			let sum=$first*$second
			echo "Multiplication of $first and $second is=$sum"

			}
			multiplication;;

	Div)			
		division(){

			let sum=$first/$second
			echo "Divison of $first and $second is=$sum"

			}
			division;;
	*)
		echo "Wrong input try again..";;	
esac
read -p "Do you want to continue(Yes/No):" a
done

