#!/bin/bash

# specical varaibles 

echo "All varaiables used in the script : " $@
echo "Number of varaiables in the script : " $#
echo "Script Name : " $0
echo "current directory : " $PWD
echo "home directory : " $HOME 
echo "PID of the script : " $$
echo "execution status of the above line : " $?
sleep 10 &
echo "the last running command pid is : " $!

