#!/bin/bash 



USERID=$(id -u)

if [ $USERID -ne 0 ] 
then
    echo " need sudo access"
    exit 1
fi 
yum install nginx -y 

echo "$?"