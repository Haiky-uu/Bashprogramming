#!/bin/bash

echo "Enter File name:"

read file

vim $file.sh
echo "Getting output:"
sleep 3
bash $file.sh

