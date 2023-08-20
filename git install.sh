#!/bin/bash 



if [ $(whoami)=='root' ] then 
    echo " u r in root "
    yum install git -y
    if  [ $? -eq 0 ] then 
        echo " git is installed"
    else 
        echo " something error is there "

    fi 

else
    echo " need  sudo access"
fi 