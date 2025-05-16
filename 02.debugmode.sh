#!/bin/bash

#Running shell script in debugmode. if you run shell script in debugmode we can easly findout the errors ( line by line we can see the out put)

echo "This is the frist line"
echo "Now im running the below lines on debugmode"
set -x  #Debugmode ON
echo "Hello welcome to the sjel-practice"
set +x
echo "now the above lines are running on debug mode"
echo "check the error's on debug lines"

