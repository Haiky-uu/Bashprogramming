#!/bim/bash

count=0
num=10

while [[ $count -le $num ]]
do
	echo "Numbers are $count until $num gets"
	let count++
done
