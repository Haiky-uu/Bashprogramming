#!/bin/bash

echo "Enter name of program:"
read a
touch $a
echo "File created $a"
vim $a

