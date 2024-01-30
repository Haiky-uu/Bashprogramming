#!/bin/bash

echo "Checking for free ram:-"
Free_space=$(free -mth | grep "Total" | awk '{print $4}')
TH=7

if [[ $Free_space -lt $TH ]]
then
	echo "Ram is running low - $Free_space"
else
	echo "Ram is on high - $Free_space"
fi
