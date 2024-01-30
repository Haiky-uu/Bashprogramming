#!/bin/bash

read -p "Enter your marks:" marks 

if [[ $marks -ge 40 ]]
then
	echo "you have passed.."
else
	echo "you failed !!!!!"
fi	
