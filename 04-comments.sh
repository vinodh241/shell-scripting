#!/bin/bash
#Shell script supporting 2 types of comments

#single line comment and multiline comment

 #  (#) --> single line comment indicates with yash
 
 # <<vinodh 
                # Multiline comments starts with <<anyname  and ends with same name as below
 # vinodh 

 echo "Welcome to S L C scripting"
 echo "shell scripting supports SLC and MLC"
 #echo "This line commented with S L C"
 echo "we can use M L C for more lines"
 <<vinodh
 date
 ls
 cal
 cat
vinodh
 echo "comments are used above lines"