#!/bin/bash

while read myvar
do
	echo "Values form file $myvar"
done<test.txt
