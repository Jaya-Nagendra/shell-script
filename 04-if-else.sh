#!/bin/bash

NUMBER=$1

if [ "$NUMBER" -gt 100 ]
then 
    echo "Given Number $NUMBER Is Greater then 100"
else 
    echo "Given Number $NUMBER Is Lessthen 100"
fi 

# fi - Denotes end of the if-else block 

# if [ "$NUMBER" -gt 100 ]   - The spacing is mandatory.

