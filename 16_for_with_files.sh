#!/bin/bash

path= "/home/viper/Documents/MyshellScripts/resume.txt"

for items in $(cat $path)
do
	echo "$items"	
done
