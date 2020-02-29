#!/bin/bash -x

echo "*************************User Registration*************************"

# VALIDATION OF FIRST NAME
pattern="^[A-Z][a-z]{2,}$"
read -p "Enter a first name: " firstName
if [[ $firstName =~ $pattern ]]
then
	echo "Valid"
else
	echo "Not Valid"
fi

# VALIDATION OF LAST NAME
pattern="^[A-Z][a-z]{2,}$"
read -p "Enter a last name: " lastName
if [[ $lastName =~ $pattern ]]
then
	echo "Valid"
else
	echo "Not Valid"
fi
