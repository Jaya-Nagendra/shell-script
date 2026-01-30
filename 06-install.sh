#!/bin/bash

USERID=$(id -u)

if [ USERID -eq 0 ] ; then 
    echo "Run this script with root access"
    exit 1
fi

dnf install nginx -y

echo "Instalation of nginx was completed"