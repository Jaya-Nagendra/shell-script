#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
echo "Error: This user $ID was not a root user"
else 
echo "$ID was a root user"
yum install mysql 
fi