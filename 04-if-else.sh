#!/bin/bash

NUMBER=$1


if [ "$NUMBER" -gt 100 ]; then
    echo "Given Number $NUMBER Is Greater than 100"
else 
    echo "Given Number $NUMBER Is Less than 100"
fi