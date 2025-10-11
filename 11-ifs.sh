#!/bin/bash

FILE=/etc/passwd

R="\e[31m"

G="\e[32m"

Y="\e[33m"

N="\e[0m"

if [ ! -f $FILE ] # -f will check weather the file available or not  
then
    echo -e "$R Source directory : $FILE does not exists. $N"
fi

while IFS= read -r username password user_id group_id user_fullname home_dir shell_path
do
    echo "user name : $username"

done < $FILE