#!/bin/bash

#Elif statement

read -p "Enter your marks:" marks

if [[ marks -ge 80 ]]
then
	echo "you got 1st class"

elif [[ marks -ge 60 ]]
then
	echo "you got 2nd class"

elif [[ marks -ge 40 ]]
then
	echo "you got 3rd class"

else
	echo "you have failed us !!!"
fi


