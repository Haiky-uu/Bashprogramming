#!/bin/bash
#to access arguments

if [[ $# -eq 0 ]]  #exit is used if the arguments are not given
then
	echo "Please provide at least one argument"
	exit 1
fi

echo "Your name:$1"
echo "Your age:$2"

echo "No of arguments:$#"
echo "To display all arguments passed:$@"

#for loop to access values from arguments

for filename in $@
do
	echo "Copying file : $filename"
done


