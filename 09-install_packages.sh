#!/bin/bash

#09-install_packages.sh

ID=$(id -u)


R="\e[31m"

G="\e[32m"

Y="\e[33m"

N="\e[0m"

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
    yum list installed $package  #check installed or not 

    if [ $? -ne 0 ]
    then 
        yum install $package -y
        VALIDATE $1 "Installing $package"
    else
        echo -e "$package is allready installed ... $Y Skipping $N" 
