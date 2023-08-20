#!/bin/bash 


DATE=$(date +%F)
USERID=$(id -u)
SCRIPT_NAME=$0
LOG_FILE=/tmp/$SCRIPT_NAME/$DATE.log 




VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo " installation of $2 is error  "
        exit 1
    else 
        echo " installation of $2 is done"
    fi
}




echo "your running the script : $0"



yum install postfix -y &>>$LOG_FILE

VALIDATE $? "POSTFIX"
