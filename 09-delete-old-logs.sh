#!/bin/bash

N="\e[0m"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"

LOGS_DIR=/home/ec2-user/app-logs
LOGS_FILE="$LOGS_DIR/$(basename "$0").log"

if [ ! d $LOGS_DIR ]; then
    echo "$LOGS_DIR was not exist"
    exit 1
fi

FILES_TO_DELETE=$(find $LOGS_DIR -name "*.log" -mtime +14)

if [ -z "$FILES_TO_DELETE" ]; then
    echo "No files older than 14 days to delete."
else
while IFS= read -f filepath; do
    echo "deleting file "$filepath"
    rm -f $filepath
    echo "deleted file: $filepath"
done <<< $FILES_TO_DELETE        
fi