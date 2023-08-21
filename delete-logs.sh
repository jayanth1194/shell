#!/bin/bash

DATE=$(date +%F)
LOG_FILE=/var/log/varnish
SCRIPT_NAME=$0
SCRIPT_FILE=/tmp/$SCRIPT_NAME-$DATE.log

OLD_FILES=$(find $LOG_FILE -name "*.log"  -type f -mtime +14)
NUMBER_OLD_FILES=$(cat $LOG_FILE |wc -l)
echo "$OLD_FILES,$NUMBER_OLD_FILES "

while read line
do 
    echo " deleteing the type  $line"
    rm -rf $line
done <<< $OLD_FILES


