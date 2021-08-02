#!/bin/bash

#!/bin/bash

echo -e "Recipient:"
read -p "" MAILR;
#echo " "
echo -e "Subject:"
read -p "" SUB;

echo "Hello JustSpam team, We already cleaned the account was abusing on this server, now the queue is too low and everything is fine, can you guys proceed with delist? Thanks in advance!" | mail -s "$SUB" $MAILR
