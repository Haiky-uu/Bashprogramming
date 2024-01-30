#!/bin/bash
#$Revision:001$
#$Wed Oct 18 10:34:32 IST 2023$

echo "....Archive Files Program...."
sleep 2

#Variables
read -p "Enter directory absolute path:" BASE
DAYS=10
DEPTH=1
RUN=0
sleep 2
#Check if base directoy is present or not
echo "Finding base directoy..."
sleep 2
if [[ ! -d $BASE ]]
then
	echo "Directory dose not exist: $BASE"
	exit 1
else
	echo "Base directory exist"
	sleep 2
fi

#create the archive directory if not exist in base folder
echo "Finding archive directory"
sleep 2
if [[ ! -d $BASE/archive ]]
then
	echo "Creating archive directory"
	mkdir $BASE/archive
else
	echo "Archive directory exist"
	sleep 2
fi

#Find the files of given size by the user
read -p "Enter the size you want of the files to be arcive e.g. 20M, 100M " SIZE
sleep 2
for i in `find $BASE -maxdepth $DEPTH -type f -size +$SIZE`
	do
		if [ $RUN -eq 0 ]
		then 
			echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ==> $BASE/archive"
			gzip $i || exit 1
			mv $i.gz $BASE/archive || exit 1
		fi

	done

