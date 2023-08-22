#!/bin/bash 

DATE=$(date +%F)

LOG_FILE=/tmp

DISK_STORGE=$(df -hT | grep -vE 'tmpfs|File')

DISK_THRESOLD=12


while read line

do 

    USUAGE=$(echo $line | awk -F ' ' '{print $6}'| cut -d "%" -f1)

    TYPE=$(echo $line | awk -F ' ' '{print $1}')
    if [ $USUAGE -gt  12 ]
    then 
    echo "HIGH DISK USUAGE OF $TYPE : $USUAGE"
    fi 

done <<< $DISK_STORGE



