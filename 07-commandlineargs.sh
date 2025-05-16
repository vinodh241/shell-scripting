#!/bin/bash

#command line arguments 
<<commandlinearguments

while executing  the shell scripting passing the values is called commandline args

1. we can specify n number of arguments, there is no limitations
2.Each arguments is separated by space

Ex: 
scriptfile.sh arg1 arg2 arg3

if you want to display shell script name then use $0
if you want to display the arg1 value is use $1 like 2nd $2

if you want to get more than one number then use ${10}
otherwise shell script will displays the $10  frist 1 value displays

if you want to know how many args passed

$# ---> Number of arguments
$* ---> All the arguments
$@ ---> All the arguments

$* all the args as one string
$@  each arg as one one string

$$ --->  it will give the process ID 

$? ---> previous command execution status
$? --> 0 (success only other than zero any numeber failure) 127 is command not found in shell scripting

commandlinearguments

<<CLA
echo "Command line arguments"

echo "scriptname is : " $0
echo "1st Argument is : " $1
echo "2nd Arguments is : " $2
echo "3rd Argument is : " $3   
echo "10th Argument is : "${10}

echo "Number of arguments is : " $#
echo "All the arguments using : " $*
echo "All the arguments using : " $@
date
echo "Process ID is : " $$
echo "Previous command execution status is : " $?
CLA













