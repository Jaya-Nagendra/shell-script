#!/bin/bash

SOURCE_DIR=/tmp/shellscript-logs

if [ ! -d $SORCE_DIR ] # -d will check weather the directory available or not 
then
    echo -e "$R Source directory : $SOURCE_DIR does not exists. $N"
fi

FILES_TO_DELET=$(find . -type f -mtime +14 -name "*.log")

while IFS= read -r line
do
echo "Deleting file : $line
done <<< $FILES_TO_DELET 