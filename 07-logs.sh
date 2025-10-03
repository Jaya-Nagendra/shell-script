#!/bin/bash

ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

R="\e[31m"

G="\e[32m"

Y="\e[33m"

N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "Error : Installing $2 $R FAILED $N" 
    else
        echo -e "Installation $2 $G SUCESS $N"
    fi
}

if [ $ID -ne 0 ]
then 
    echo -e "$R Error: Your not a root user $N"  #If its not sucess also it will go for instalation but there linux will give error for avoiding this will use EXIT Code.
    exit 1 # you can give other than 0
else 
    echo -e "$G You are root user $N"
fi

yum install mysql -y &>> $LOGFILE
VALIDATE $? "mysql"

yum install git -y &>> $LOGFILE
VALIDATE $? "git"