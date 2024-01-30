#!/bin/bash

#Script to show how to use variables

name="tod"  #This is string

age="22"  #This is intiger

height= "5.8"  #This is float

echo "My name is $name my age is $age my height is $height"

name="nishad" #Changing variable's value

echo "My name is $name"  

#Variable to store the output of a command

val=$(whoami)

echo "Name of the user of machine is $val"

#Constant variable that cannot be changed

readonly a="variable"

echo "print constant variable=  $a"

a="newvar"

#here this echo cannot be printed as error will occur variable cannot be changed
echo "print changed variable= $a"





