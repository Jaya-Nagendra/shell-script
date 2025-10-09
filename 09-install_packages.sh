#!/bin/bash

ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

R="\e[31m"

G="\e[32m"

Y="\e[33m"

N="\e[0m"

echo "Script started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "$2 ... $R FAILED $N"
    else 
        echo -e "$2 ... $G SUCCESS $N"
    fi    

}

if [ $ID -ne 0 ]
then 
    echo -e "$R Error: Your not a root user $N"  
else 
    echo -e "$G You are root user $N"
fi

echo "The all arguments passed are : $@"

for package in $@
do
    yum list installed $package &>> $LOGFILE #check installed or not 

    if [ $? -ne 0 ]
    then 
        yum install $package -y &>> $LOGFILE
        VALIDATE $1 "Installing $package"
    else
        echo -e "$package is allready installed ... $Y Skipping $N" 
    fi
done