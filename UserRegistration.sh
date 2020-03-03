#!/bin/bash -x

echo "*************************User Registration*************************"

# VALIDATION OF FIRST NAME
function validateFirstName(){
	local pattern="^[A-Z][a-z]{2,}$"
	read -p "Enter a first name: " firstName
	if [[ $firstName =~ $pattern1 ]]
	then
		echo "Valid"
	else
		echo "Not Valid"
	fi
}

# VALIDATION OF LAST NAME
function validateLastName(){
	local pattern="^[A-Z][a-z]{2,}$"
	read -p "Enter a last name: " lastName
	if [[ $lastName =~ $pattern ]]
	then
		echo "Valid"
	else
		echo "Not Valid"
	fi
}

# VALIDATION OF EMAIL ID
function validateEmail(){
	local pattern="^[a-z]{3}+.[a-zA-Z]{3}+@[a-z]{2}+.[a-zA-Z]{2}$"
	read -p "Enter: " email
	if [[ $email =~ $pattern ]]
	then
		echo "Valid"
	else
		echo "Not Valid"
	fi
}

# VALIDATION OF MOBILE FORMAT
function mobileFormat(){
	local pattern="^[0-9]{2}[ ][0-9]{10}$"
	read -p "Enter: " mobileNumber
	if [[ $mobileNumber =~ $pattern ]]
	then
		echo "Valid"
	else
		echo "Not Valid"
	fi
}

# VALIDATION OF PASSWORD RULE1
function password(){
	local pattern="^[a-zA-Z0-9]{8,}$"
	read -p "Enter: " passwordRule1
	if [[ $passwordRule1 =~ $pattern ]]
	then
		echo "Valid"
	else
		echo "Not Valid"
	fi
}

# CALL FUNCTION
validateFirstName
validateLastName
validateEmail
mobileFormat
password
