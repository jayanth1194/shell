#!/bin/bash 


# loops concept 

# for var in list 
# do 
#     your code 
# do
DATE=$(date +%F)
LOG_FILE=/tmp/$0-$DATE.log
USERID=$(id -u)




VALIDATE(){
    if  [ $? -ne 0 ]
    then 
        echo " installation of $1 is Failure"
        exit 1
    else 
        echo " installation of $1 is  Success"
    fi 
}

if  [ $USERID -ne  0 ]
then 
    echo "this require sudo access"
    exit 2
fi 





for i in $@
do 
    PACKAGE_STATUS= $(rpm -q $i | awk -F  '-' '{print $1}')
    if [ $PACKAGE_STATUS==$i ]
    then 
        echo " application is installed already "
    else 
    yum install $i -y  &>>$LOG_FILE
    VALIDATE $i
    fi
done

