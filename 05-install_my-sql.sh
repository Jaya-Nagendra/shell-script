#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
echo "Error: This user $ID was not a root user"  #If its not sucess also it will go for instalation but there linux will give error for avoiding this will use EXIT Code.
exit 1 # you can give other than 0
else 
echo "$ID was a root user"
fi

yum install mysql -y  

if [ $? -ne 0 ]
then 
echo "Error : Installing mysql is failed"
else
echo "The mysql installation was sucesss"
fi