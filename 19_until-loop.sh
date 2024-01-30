#!/bin/bash

a=10
b=1

until [[ $a -le $b ]]
do
	echo "Value of $a until it gets $b"
	a=`expr $a - 1` #or let a--
done

