#!/bin/bash

# Shell dont care about data type 

NUMBER1=20
NUMBER2=AAA

SUM=$(($NUMBER1+$NUMBER2))

echo "Total = $SUM"         # The out put was 20 it will not consider NUMBER2.

# Arrays 

FRUITS=("Apple" "Banana" "Kiwi")

echo "1st Fruit : ${FRUITS[0]}"

echo "All Fruits : ${FRUITS[@]}"    # Print All fruits

