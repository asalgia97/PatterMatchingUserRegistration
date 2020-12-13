#!/bin/bash -x
echo "Welcome to Pattern Matching User Registration"
read -p "Enter First Name" checkFirstName
read -p "Enter Last Name" checkLastName
Pattern=^[A-Z][a-zA-Z]{2}
Pattern2=^[A-Z][a-zA-Z]{2}
if [[ $checkFirstName =~ $Pattern ]]
then
	echo "$checkFirstName is valid"
else 
	echo "Invalid First Name"
fi
if [[ $checkLastName =~ $Pattern2 ]]
then
	echo "$checkLastName is valid"
else
	echo "Invalid Last Name"
fi
