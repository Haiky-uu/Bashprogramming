#!/bin/bash
read -p "Enter folder name:-" a

if [ -d $a ]
then
	echo "file exist"
else
	mkdir $a
	echo "Folder created, $a"
fi
read -p "Enter file name:-" b

if [ -f $b ]
then
	echo "file exist"
else
	touch $b
	echo "file created, $b"
fi
