#!/bin/bash

<<comment

This script shows consatant variable i.e. variable 
once you defiened and you don't wanna change until end 

comment

readonly ac="abc"

echo "value of a is : $ac"

sleep 2

ac= "abc"  #the value will not be changed as it was readonly or constant so it will give error

echo "value of a is : $ac"

