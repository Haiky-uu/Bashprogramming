#!/bin/bash

#checking if user is root or not

if [ $UID -eq 0 ]
then
	echo "User is root $a"
else
	echo "User is not root $a"
fi
