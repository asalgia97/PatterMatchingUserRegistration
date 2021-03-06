#!/bin/bash -x
shopt -s extglob
echo "Welcome to Pattern Matching User Registration"
read -p "Enter First Name" checkFirstName
read -p "Enter Last Name" checkLastName
read -p "Enter Email" Email
read -p "Enter Mobile Number In '(country code)xx (number)xxxxxxxxxx' Format : " mobileNumber
read -p "Enter User Password : " pass
Pattern=^[A-Z][a-zA-Z]{2}
Pattern2=^[A-Z][a-zA-Z]{2}
emailPattern='^[a-c]{3}([.|-|+]*[0|1]+){0,3}@[a-z0-9]+.[a-z]+([.][a-z]+)?$'
mobilePattern=^[0-9][1-9]" "[0-9]{10}


passwordPatternContainUpperCase='^[a-zA-Z0-9\$|#|\!|\@]*[A-Z]+[a-zA-Z0-9]*'
passwordLengthGreaterThan8Char='^[a-zA-Z0-9\$|#|\!|\@]{8}[a-zA-Z0-9]*'
passwordPatternContainingNum='^[a-zA-Z0-9\$|#|\!|\@]*[0-9]+[a-zA-Z0-9]*'
passwordPatternContainingOnlyOneSpecialChar="^[a-zA-Z0-9]*[\$|#|\!|\@]{1}[a-zA-Z0-9]*$"

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
if [[ $pass =~ $passwordLengthGreaterThan8Char ]]
then
	if [[ $pass =~ $passwordPatternContainUpperCase ]]
	then
		if [[ $pass =~ $passwordPatternContainingNum ]]
		then 
			if [[ $pass =~ $passwordPatternContainingOnlyOneSpecialChar ]]
			then
				echo "$pass is valid ****"
				else
				echo "$pass does not contain a special character"
			fi
	else
	echo"$pass does not contain a number"	
fi
else
		echo "$pass Invalid password"
	fi
	else echo "Pass is  Less than 8 characters"
fi
