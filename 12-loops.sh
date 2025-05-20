#!/bin/bash

# colour code is   ( -e [<colocode>m)

USERID=$( id -u )
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

#LOG_FOLDER="/var/log/shellscript-logs"

PACKAGES=("mysql" "python" "nginx" "httpd")  


if [ $USERID -ne 0 ]
then
    echo -e "$R ERROR: : $Y Please run this script with root access $N"
    exit 1
else
   echo -e "$G You are running with root access $N"
fi

# VALIDATE functions takes input as exit  status, what command they tried to install 

VALIDATE(){
        if [ $1 -eq 0 ]
        then
           echo "Installing $2 is ..... SUCCESS"
        else
           echo "Installing $2 is ..... FAILURE"
           exit 1 
        fi           
}

#for package in ${PACKAGES[@]}
#do
    if [ $? -eq 0 ]
    then
        echo "MYSQL is installed ... Nothing to do"

    else
         echo "MySQL is not installed....please install MySQL"
            dnf install mysql -y
         echo "installing mysql package ....."
#done



