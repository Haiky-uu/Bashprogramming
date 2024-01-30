#!/bin/bash

read -p "Enter character:" char

if [[ char -eq "Y" || char -eq "y" ]]
then
    echo "YES"

elif [[ char -eq "N" || char -eq "n" ]]
then
    echo "NO"

else
    echo "Wrong input"
    

fi
