#!/bin/bash

for filename in $1 $2
do
	cp $1 $2
	echo "Copying file $filename"
done
