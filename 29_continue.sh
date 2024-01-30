#!/bin/bash

#Program for continue statement

for i in 1 2 3 4 5 6 7 8 9 
do
	let r=$i%2
	if [[ r -eq 0 ]]
	then
		continue
	else
		echo "Odd number is $i"
	fi
done

