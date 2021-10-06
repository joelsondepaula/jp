#!/bin/bash


sed -i 's/ > \/dev\/null 2>\&1//g' /var/spool/cron/*

sed -i '1 ! s/$/ > \/dev\/null 2>\&1/' /var/spool/cron/*

echo "O trecho > \/dev\/null 2>\&1 foi adicionado ao final de todas as crons de contas cPanel presentes neste servidor com sucesso"
==========



====O2 (per user)====

#!/bin/bash


if [ $# -ne 1 ]; then
  echo -e "Invalid parameter, please use: devnull.sh [ACCOUNT]: \033[0;31m[ERROR]\033[0m"
  exit;
else
  user=$1
fi


verifyuser=$(grep -P :\ "$user"$ /etc/trueuserdomains | awk '{print $2}')
if [ "$verifyuser" != "$user" ]; then
	echo -e "The user does \033[1;33m$user\033[0m not exist: \033[0;31m[ERROR]\033[0m"
	exit;
else  
	sed -i 's/ > \/dev\/null 2>\&1//g' /var/spool/cron/$user
	sed -i '1 ! s/$/ > \/dev\/null 2>\&1/' /var/spool/cron/$user	
fi

echo "O trecho > \/dev\/null 2>\&1 foi adicionado ao final de todas as crons do usuário $user."
