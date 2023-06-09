#!/bin/bash

# Display the UID and username of the user executing this script.
# Display if the user is the vagrant user ior not.

# Display the UID
echo "Your UID is ${UID}."

# Only display if the UID does NOT match 1000.
UID_TO_TEST_FOR="1000"
if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]]
then
	echo "Your UID does not match ${UID_TO_TEST_FOR}."
	exit 1
fi

# Display the username.
USER_NAME=$(id -un)

# Test if the command succeded.
if [[ ${?} -ne 0 ]]
then 
	echo 'The id command did not execute successfully.'
	exit 1
fi
	echo "Your username is ${USER_NAME}."

# You can use a string test conditional.

# Test for != (not equal) for the string.i
