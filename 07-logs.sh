#!/bin/bash

ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "Error : Installing $2 FAILED" 
    else
        echo "Installation $2 SUCESS"
    fi
}

if [ $ID -ne 0 ]
then 
    echo "Error: This user $ID was not a root user"  #If its not sucess also it will go for instalation but there linux will give error for avoiding this will use EXIT Code.
    exit 1 # you can give other than 0
else 
    echo "The person was a root user : ID - $ID"
fi

yum install mysql -y &>> $LOGFILE
VALIDATE $? "mysql"

yum install git -y &>> $LOGFILE
VALIDATE $? "git"