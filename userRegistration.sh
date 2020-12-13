#!/bin/bash -x
shopt -s extglob
echo "Welcome to Pattern Matching User Registration"
read -p "Enter First Name" checkFirstName
read -p "Enter Last Name" checkLastName
read -p "Enter Email" Email
Pattern=^[A-Z][a-zA-Z]{2}
Pattern2=^[A-Z][a-zA-Z]{2}
emailPattern=^[a-z]+([.][a-z]+)?@[a-z]+.[a-z]+([.][a-z]+)?$
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
if [[ $Email =~ $emailPattern ]]
then
	echo "$email is valid"
else
	echo "Invalid Email"
fi
