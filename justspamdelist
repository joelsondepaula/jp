#!/bin/bash


USUARIO=$(pwd | cut -f3 -d"/")
DOMINIO=$(egrep $USUARIO /etc/trueuserdomains | cut -d: -f1 | tail -1)

uapi --user=$USUARIO Email add_pop email=hdteste password=AdQ9p-mC84567 quota=0 domain=$DOMINIO skip_update_db=1

echo -e "Recipient:\n"
read -p " " MAILR;
#echo " "
echo -e "Subject:\n"
read -p " " SUB;

echo -e "Subject: $SUB" | exim -r hdteste@DOMINIO -v -odf "$MAILR"
 
