#!/bin/bash

DATE=$(date +%F)
LOG_FILE=/var/log/varnish
SCRIPT_NAME=$0
SCRIPT_FILE=/tmp/$SCRIPT_NAME-$DATE.log

OLD_FILES=$(find $LOG_FILE -name "*.log"  -type f -mtime +14)
NUMBER_OLD_FILES=$(cat $LOG_FILE |wc-l)






