#!/bin/bash


read -p "Enter character:" char

<<comment

if [[ $char == "Y" ]] || [[ $char == "y" ]]
then
    echo "YES"

else
    echo "NO"
fi
comment

if [[ $char == 'Y' ]] || [[ $char == 'y' ]]
then
    echo "YES"

elif [[ $char == 'N' ]] || [[ $char == 'n' ]]
then
    echo "NO"

else
    echo "wrong input"

fi


