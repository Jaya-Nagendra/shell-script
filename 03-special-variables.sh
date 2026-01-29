#!/bin/bash

echo "Script Name : $0"
echo "Present working directory : $PWD"
echo "Who is running script : $USER"
echo "Home directory of user : $HOME"
echo "All variables passed to the script : $@"
echo "No of variables passed to the script : $#"
echo "PID of the running script : $$"
echo "To take process to background use &"
sleep 100 &

echo "To get recently Background runned  command PID : $!"
echo "Exit status of priviously runned command: $?"