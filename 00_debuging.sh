#!/bin/bash 

echo "Welcome to debuging"

sleep 2

<< comment  Writing set -x and set +x between the set functions the code written will be debugged and executed
comment

set -x

echo "Hello World!"

read -p "Enter Age=" age
read -p "Enter Name=" name

sleep 2

echo "$name is $age years old"

set +x

<< comment

While using bash there are three ways to debug script 
1) while executing script from terminal type
	$ bash +x ./script-name.sh or script-name.sh 

2) in the script at header portion 
	#!/bin/bash -x

3) using set keyword
	set -x
		....<script start>
			echo "Hello"
		<script end>.....
	set +x
	
	script inside the set -x and set +x keywords get's debugged
comment
