#!/bin/bash

echo "Name of this script is ${0}"

read -p "Enter any website to check connection:" site

ping -c 1 $site &> /dev/null

if [[ $? -eq 1 ]] #here $? is used to check if the recent or last command has run sucessfully or not i.e 0 for yes and 1 for no to see if ping is sucessfully executed or not
then
	echo "Conncetion unsucessfull!"
	
else
	echo "connection success!"
fi
