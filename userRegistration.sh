#!/bin/bash -x
echo "Welcome to Pattern Matching User Registration"
read -p "Enter First Name" checkFirstName

Pattern=^[A-Z][a-zA-Z]{2}

if [[ $checkFirstName =~ $Pattern ]]
then
	echo "$checkFirstName is valid"
else 
	echo "Invalid First Name"
fi
