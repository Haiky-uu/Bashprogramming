#!/bin/bash

if [ "$1" == "" ]
then
	echo "You forgot an ip address!"
	echo "Syntax: ./ipsweep.sh 10.11.12"
else
for ip in `seq 1 254`; #counting form 1 to 254
do
	ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi

