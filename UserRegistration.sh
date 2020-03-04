#!/bin/bash -x

echo "*************************User Registration*************************"

# VALIDATION OF FIRST NAME
function validateFirstName(){
	local pattern="^[A-Z][a-z]{2,}$"
	read -p "Enter a first name: " firstName
	if [[ $firstName =~ $pattern ]]
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
	local pattern="^[a-z]+.[a-zA-Z]*+@[a-z]+.[a-z]{0,4}?[a-z]{0,4}.[a-z]{2,4}$"
	read -p "Enter mail: " email
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
	read -p "Enter mobile format: " mobileNumber
	if [[ $mobileNumber =~ $pattern ]]
	then
		echo "Valid"
	else
		echo "Not Valid"
	fi
}

# VALIDATION OF PASSWORD RULE1
function passwordRule1(){
	local pattern="^[a-zA-Z0-9]{8,}$"
	read -p "Enter for password rule1: " passwordRule1
	if [[ $passwordRule1 =~ $pattern ]]
	then
		echo "Valid"
	else
		echo "Not Valid"
	fi
}

# VALIDATION OF PASSWORD RULE2
function passwordRule2(){
	local pattern="[A-Z][a-zA-Z0-9]*$"
	read -p "Enter for password rule2: " passwordRule2
	if [[ $passwordRule2 =~ $pattern && ${#passwordRule2} -ge 8 ]]
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
passwordRule1
passwordRule2
