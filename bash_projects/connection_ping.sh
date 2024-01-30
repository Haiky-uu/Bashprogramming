#!/bin/bash

read -p "Enter any website to check connection:" site

ping -c 2 $site 

if [[ $? -eq 1 ]]
then
	echo "Conncetion unsucessfull! to $site"
else
	echo "connection success! to $site"
fi
