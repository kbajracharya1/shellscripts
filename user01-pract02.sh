#!/bin/bash

# Display the UID and username of the user executing the script. 
# Display if the user is the root user or not.

# Display the UID (prebuilt)
echo "Your UID is ${UID}"

# Display the username
USER_NAME=$(id -un)
echo "Your username is ${USER_NAME}"

# Displaying username other way. 
USER_NAME=`id -un`
echo "Your alternative way of getting username ${USER_NAME}"

# Display if the user is the root user or not.
if [[ ${UID} -eq 0 ]]
then 
	echo 'You are a root.'
else 
	echo 'You are not a root.'
fi

