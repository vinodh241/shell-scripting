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

# NUMBER=$1

# if [ $NUMBER -lt 10 ]
# then

# echo "given number $NUMBER is less then 10 "

# else 

# echo "givem number $NUMBER is not less than 10 "

# fi

USERID=$( id -u )
if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1
    else 
    echo "You are running with root access"
fi
    dnf list installed mysql
    echo "MYSQL is not instaled ... Going to install"
    dnf install mysql -y  
if [ $? -eq 0 ]
 then 
    echo "Installing MySQL is ... SUCCESS"
    else
    echo "Installing MuSQL is .... FAILURE"
    exit 1
fi 
    else
    echo "MYSQL is already installed .. Nothing to do"
    exit 1 
fi



