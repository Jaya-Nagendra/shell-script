#!/bin/bash

NUM1=10
NUM2=nag

SUM=$(($NUM1+$NUM2))

echo "SUm = $SUM"   # output 10 will ignore NUM2 because in arthamatic operation shell will ignore string

NUM1=aa
NUM2=nag

SUM=$(($NUM1+$NUM2))

echo "SUm = $SUM" # this will print 0

FRUITS=( "Apple" "Banana" "Orange" )

echo "All fruits are: ${FRUITS[@]}"
echo "1st fruit : ${FRUITS[0]}"