#!/bin/bash 


TO_ADDRESS=$1
SUBJECT=$2
BODY=$3
ALERT_TYPE=$4
NAME=$5
#mail.sh toaddreess, subject, body alert-type name 

BODY1=$(sed -e's/Team/QA TEAM' -e 's/alertype/high disk' -e "s/MESSAGE/$BODY")
echo "$BODY1"| mail -s "$SUBJECT" $TO_ADDRESS
