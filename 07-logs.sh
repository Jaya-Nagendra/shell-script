#!/bin/bash
USERID=$(id -u)

LOGFOLDER="/var/log/shell"
LOGFILE="$LOGFOLDER/$0.log"

if [ $USERID -ne 0 ]; then
echo "Run this script with root user"
exit 1
fi
mkdir -p $LOGFOLDER

VALIDATE(){
    if [ $1 -ne 0 ]; then
    echo "$2 .....FAILURE"
    else
    echo "$2 ..... SUCCESS"
    fi
}

dnf install nginx -y &>>$LOGFILE
VALIDATE $? "nginx instalation"