#!/bin/bash 



USERID=$(id -u)

VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo " installation is wrong "
        exit 1
    else 
        echo " installation is done"
    fi
}


# yum install nginxss -y 

# if [ $? -ne 0 ]
# then 
#     echo " exit status is not zero "
#     exit 2
# else 
#     echo " install of nginx is success"
# fi 

yum install postfix -y 

VALIDATE
