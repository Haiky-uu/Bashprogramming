#!/bin/bash

<< comment 
here we declare and retrive vaiables using
 $1, $2..

1)by using $0 wget name of current script or file

2)while $1 take first argument and if $2 is put it takes secound argument
you need to give while running script 

e.g. bash script.sh ronny   --here then ronny gets placed in name variable if $1 is used

or

e.g. bash script.sh ronny roy --here roy gets placed in variable if $2 is used  the second argument 

3)if we suppy $# we get no of arguments we supplyed to the script

comment

echo "Make sure you entered 4 argumets required for this script or you can re run it ---" 
sleep 3

name=$1
echo "$name"
sleep 2

name2=$2
echo "$name2"
sleep 2

name4=$4
echo "$name4"
sleep 2

filename=$0
echo "Your file name is $filename"
sleep 2

arguments=$#
echo "You entered $arguments Arguments"
