#!/bin/bash

echo -e "Recipient:\n"
read -p " " MAILR;
#echo " "
echo -e "Subject:\n"
read -p " " SUB;

echo -e "Subject: $SUB" | exim -r root@$HOSTNAME -v -odf "$MAILR"