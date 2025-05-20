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
           echo -e "$G Installing $2 is ..... SUCCESS $N"
        else
           echo -e "$R Installing $2 is ..... FAILURE $N"
           exit 1 
        fi           
}
for package in ${PACKAGES[@]}
#for package in $@
do
    dnf list installed $package 
    if [ $? -ne 0 ]
    then
        echo "$package is not installed....please install $package"
        dnf install $package -y
        VALIDATE $? "$package"
        echo -e "$G installing $package package ..... $N"
    else
        echo -e " $G $package is installed ... Nothing to do $N" | tee -a
    fi
done



