#!/bin/bash 



echo "Enter the number here :" 
read -s NUMBER

if [ $NUMBER -gt 10]
then
    echo " number is greater than 10"
else 
    echo " number is less than 10 "
fi

