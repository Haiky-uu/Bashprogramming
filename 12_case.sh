#!/bin/bash

echo "Hey choose a option"
echo "a - refers to the current date"
echo "b - refers to files in the current directory"
echo "c - refers to print working directory"

read choice

case $choice in
	a) 
		echo "Current date is $(date)";;
	
	b)
		echo "Files in current directory are"
		sleep 1
		ls;;
	
	c)
		echo "Your Working directory is "
		sleep 1
		pwd;;
		
	*)
		echo "Wrong option try again-----"
		sleep 1
		bash 12_case.sh;;
esac
