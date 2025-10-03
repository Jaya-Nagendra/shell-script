#!/bin/bash

VARIABLE1=Jaya
VARIABLE2=Nagendra

echo "My Name is $VARIABLE1 $VARIABLE2"

#For storng an command out put in to an variable.

DATE=$(date)

echo "Dtae and Time is : $DATE"

#For Dynamic arguments - from the customer while running time

VARIABLE3=$1
VARIABLE4=$2

echo "I am Learning : $1 - $2" 

#While entering arguments in running time in console these are vissible if we want to hide them while entering in console.

echo "Please Enter the user name"
read USERNAME             #This entering value will be visible in console.

echo "Please Enter your password"
read -s PASSWORD           # This value was not vissible.

echo "User name is : $USERNAME & Password is : $PASSWORD"
