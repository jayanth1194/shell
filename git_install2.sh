#!/bin/bash 



USERID=$(id -u)

if [ $USERID -ne 0 ] 
then
    echo " need sudo access"
    exit 1
fi 
yum install nginxss -y 

if [ $? -ne 0 ]
then 
    echo " exit status is not zero "
    exit 2
else 
    echo " install of nginx is success"
fi 