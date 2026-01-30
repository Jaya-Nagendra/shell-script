#!/bin/bash
USERID=$(id -u)

LOGFOLDER="/var/logs/shell"
LOGFILE="$LOGFOLDER/$0.log"

if [USERID -ne 0 ]; then
echo "Run this script with root user"
exit 1
fi

VALIDATE(){
    if [ $1 -eq 0 ]; then
    echo "$2 .....FAILURE"
    else
    echo "$2 ..... SUCCESS"
    fi
}

dnf install mysql -y &>> $LOGFILE
VALIDATE $? "Mysql instalation"