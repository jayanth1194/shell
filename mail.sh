#!/bin/bash 


TO_ADDRESS=$1
SUBJECT=$2
BODY=$(sed -e 's/[]\/$*.^[]/\\&/g' <<< $3) 
ALERT_TYPE=$4
NAME=$5
#mail.sh toaddreess, subject, body alert-type name 

BODY1=$(sed -e "s/Team/$NAME" -e "s/alertype/$ALERT_TYPE" -e "s/MESSAGE/$BODY" template.html)
echo "$BODY1"| mail -s "$SUBJECT" $TO_ADDRESS