#!/bin/bash
RED='\033[0;31m'
echo -e "================== ${RED} Não há necessidade de escolher um remetente, a mensagem é enviada como root${NC} ==================="
echo -e "To:"
read -p "" MAILR;
#echo " "
echo -e "Subject:"
read -p "" SUB;

echo "Hello JustSpam team, We already cleaned the account that was abusing on this server, now the queue is normal and everything is fine, may you guys proceed with delist? Thanks in advance!" | mail -s "$SUB" $MAILR

echo "Delist enviado com sucesso!" 
