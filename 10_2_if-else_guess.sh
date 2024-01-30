#!/bin/bash

value="guessme"

guess=$1

if [ $guess = $value ]
then
	echo "Your guess is right value = $value, your guess = $guess "
else
	echo "Your guess is wrong value = $value, your guess = $guess "
fi

