#!/bin/bash

read -p "Enter age: " a
read -p "Enter country: " b

# And opeartor &&
if [[ $a -ge 18 ]] && [[ $b == "India" ]]
then
	echo "You are eligible for voting "
else
	echo "You are not eligible"
fi

# Or operator ||

if [[ $a -ge 18 ]] || [[ $b == "India" ]]
then
	echo "You are eligible for voting"
else
	echo "You are not eligible"
fi


