#!/bin/bash

echo "Installing java software"

dnf install open-jdk:latest -y

echo "Checking the java version is : "

java --version 

echo "The status of above line is : " $?
echo "The latest version of java installed"

echo "Installing nodejs software"
 
dnf install nodejs -y

echo "The status of above line is : " $?

echo "Nodejs has been installed already"
echo "cheking the nodejs version"

node -v
npm -v

echo "The status of the above line is : " $?

echo "Process ID is : " $$





 