#!/bin/bash

cat test.csv | awk 'NR!=1 {print}' | while IFS="," read id name age #or while IFS="," read id name age
do
	echo "id is $id"
	echo "name is $name"
	echo "age is $age"
done #or done<test.csv
