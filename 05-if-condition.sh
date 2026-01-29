#!/bin/bash

echo "Enter Number"
read NUMBER

if [ $NUMBER -gt 20 ] ; then
echo "The given number $NUMBER was grater then 20"
elif [ $NUMBER -eq 20 ] ; then
echo "The given number $NUMBER was equal to 20"
else
echo "The given number $NUMBER was lessthen 20"
fi