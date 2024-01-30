#!/bin/bash

#This program check if the file entered exists if it does it appends given value to it
#If it dosen't exist or not writable it creates new and prints given value to it

filename=$1

if [ -f "$filename" ] && [ -w "$filename" ]
then
	read -p "Enter something to append in file=" store
	echo "$store" >> $filename
else

	touch "$filename"
	read -p "Enter something to store in file=" store
	echo "$store" > $filename
fi
