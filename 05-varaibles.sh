#!/bin/bash
#Varaibles = 
<<Varaiables

Varaiables
# varaibles 2 types
# System define varaibles and user define variables
# How to see all system define varaibles ?
#( env or printenv )
# pwd (lowercase) command name
#PWD is Variable name
#echo HISTSIZE 
#export HISTSIZE=200 (override the default values)
#User defind var's
<<UV
     a=10
     b=20
     c=30
UV
echo "User defind varaibles"
a=10
b=20
c=30
name=vinodh
echo "a varaibles value is:"$a
echo "b varaibles value is:"$b
echo "c varaibles value is:"$c
echo "name varaible value is:"$name
date

cal

ls

#echo "The above line status is:"$?
echo "Number of varaibles is:"$#






 