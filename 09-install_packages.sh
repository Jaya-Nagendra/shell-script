#!/bin/bash

#09-install_packages.sh

ID=$(id -u)


R="\e[31m"

G="\e[32m"

Y="\e[33m"

N="\e[0m"

if [ $ID -ne 0 ]
then 
    echo -e "$R Error: Your not a root user $N"  #If its not sucess also it will go for instalation but there linux will give error for avoiding this will use EXIT Code.
    exit 1 # you can give other than 0
else 
    echo -e "$G You are root user $N"
fi

echo "The all arguments passed are : $@"