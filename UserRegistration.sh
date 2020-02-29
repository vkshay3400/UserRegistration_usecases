#!/bin/bash -x

echo "*************************User Registration*************************"

# VALIDATION OF FIRST NAME
pattern="^[A-Z][a-z]{2,}$"
read -p "Enter a name: " firstName
if [[ $firstName =~ $pattern ]]
then
	echo "Valid"
else
	echo "Not Valid"
fi
