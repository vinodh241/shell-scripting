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

#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1 #give other than 0 upto 127
else
    echo "You are running with root access"
fi

dnf list installed mysql

# check already installed or not. if Installed $? is 0, then 
# If not installed $? is not 0. expression is true
if [ $? -ne 0 ]
then
    echo "MySQL is not installed... going to install it"
    dnf install mysql -y
    if [ $? -eq 0 ]
    then
        echo "Installing MySQL is ... SUCCESS"
    else
        echo "Installing MySQL is ... FAILURE"
        exit 1
    fi
else
    echo "MySQL is already installed...Nothing to do"
fi

