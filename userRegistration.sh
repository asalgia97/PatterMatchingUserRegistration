#!/bin/bash -x
shopt -s extglob
echo "Welcome to Pattern Matching User Registration"
read -p "Enter First Name" checkFirstName
read -p "Enter Last Name" checkLastName
read -p "Enter Email" Email
read -p "Enter Mobile Number In '(country code)xx (number)xxxxxxxxxx' Format : " mobileNumber
Pattern=^[A-Z][a-zA-Z]{2}
Pattern2=^[A-Z][a-zA-Z]{2}
emailPattern=^[a-z]+([.][a-z]+)?@[a-z]+.[a-z]+([.][a-z]+)?$
mobilePattern=^[0-9][1-9]"\s"[0-9]{10}
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
	echo "$Email is valid"
else
	echo "Invalid Email"
fi
if [[ $mobileNumber =~ $mobilePattern ]]
then
	echo "+$mobileNumber is valid"
else
	echo "Invalid Mobile Number"
fi
