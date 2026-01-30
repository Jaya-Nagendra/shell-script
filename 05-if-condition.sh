#!/bin/bash

echo "Enter Number"
read NUMBER

# For adding colours for the texts.
N='\e[0m'
R='\e[31m'

if [ $NUMBER -gt 20 ] ; then
echo -e "The given number $NUMBER was $R grater $N then 20"
elif [ $NUMBER -eq 20 ] ; then
echo "The given number $NUMBER was equal to 20"
else
echo "The given number $NUMBER was lessthen 20"
fi