#!/bin/bash 

NAME=Nagendra
echo "my name is $NAME & my name ${NAME}"

#2. Passing variables as Arguments or parameters.......... sh 02-variables.sh Devops 5

COURSE=$1
DURATION=$2
echo "my name is $NAME & learning $COURSE the duration was $DURATION months"

# User can pass dynamically in terminal visible to others...............

echo "Enter your user name"
read "USERNAME"
echo "Printing username for reference : $USERNAME"

# User can pass dynamically in terminal not visible...............

echo "Enter your password"
read -s "PASSWORD"
echo "printing password for reference: $PASSWORD"

#Execute 1 command and take that out put then store taht in a variable ....... 

TIME_STAMP=$(date)
echo "Today date and time: $TIME_STAMP"