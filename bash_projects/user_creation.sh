#!/bin/bash
#$Revision:001$
#$Wed Oct 18 15:58:45 IST 2023$


# Script should be executed with root access / root privilage

if [[ "${UID}" -ne 0 ]]
then
	echo "Please run with sudo or root"
	exit 1
fi

# user should provide at least one argument as username else guide him

if [[ "${#}" -lt 1 ]]
then
	echo "usage: ${0} USER_NAME [COMMENT]..."
	echo "Please give a argument with username and a comment"	
	exit 1
fi

# Store first argument as username
USER_NAME="${1}"

#In case of more than one argument, store it as account comments
shift
COMMENT="${@}"

#Create a password
PASSWORD=$(date +%s%N)

#Create a user
useradd -c "${COMMENT}" -m $USER_NAME 

#Check if user is successfully created or not
if [[ $? -ne 0 ]]
then
	echo "The account could not be created"
	exit 1
fi

#Set the password for the user
echo $PASSWORD | passwd --stdin $USER_NAME

#Check if password is successfully set or not
if [[ $? -ne 0 ]]
then 
	echo "Password could not set"
	exit 1
fi

# Force password change on first login.
passwd -e $USER_NAME

#Display the username, password, and the host where the user was cheated.
echo
echo "Username: $USER_NAME"
echo
echo "Password: $PASSWORD"
echo
echo "Hostname: $(hostname)

