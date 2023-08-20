#!/bin/bash 



USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo " installation of $2 is error  "
        exit 1
    else 
        echo " installation of $2 is done"
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



echo "your running the script : $0"



yum install postfix -y 

VALIDATE $? "POSTFIX"
