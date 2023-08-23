#!/bin/bash 

LOG=/tmp/$NAME_$DATE.log 
NAME=$0
DATE=$(date +%F)
ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo " need root access"
    exit 1
fi 










VALIDATE(){

    if [ $? -ne 0 ]
    then
        echo " $2 ..... FAILURE" 
        exit 1
    else 
        echo "$2 ..... SUCCESS"
    fi 
}


cp mongo.repo /etc/yum.repos.d/mongo.repo
VALIDATE " copying the  mongo files " 

yum install mongodb-org -y

VALIDATE " installing mongoDb " 

systemctl enable mongod
VALIDATE " enabling mongod " 


systemctl start mongod

VALIDATE " starting mongod " 

sed -i "s/127.0.0.1/0.0.0.0/" /etc/mongod.conf


VALIDATE "changing to all networks" 

systemctl restart mongod

VALIDATE " restaring the mongod "