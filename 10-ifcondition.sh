#!/bin/bash

# ifconditon
<<IFCONDITION

syntax:

if (){
then 

-----------
---------------


else
    
    ------------------

}
fi

IFCONDITION

echo "ifelse condition"

NUMBER=$1

if [ $NUMBER -lt 10 ]
then

echo "given number $NUMBER is less then 10 "

else 

echo "givem number $NUMBER is not less than 10 "

fi

