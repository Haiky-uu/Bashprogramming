#!/bin/bash

# for loop using numbers
for i in 1 2 3 4 5
do
	echo "numbers: $i"
	sleep 3s
done

# for loop using strings
for names in roy sham baburao raju
do
	echo "names: $names"
done

# for loop using wildcards

for w in {0..20}
do
	echo "numbers: $w"
done

