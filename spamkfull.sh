#!/bin/bash
LANG=en_US.utf8
date=$(date -d "$mon 1 $year" "+%Y-%m-%d")
archive='retorno.txt'
ipsaida=$(hostname -i | tr -s " " | cut -f1 -d " ")


cat /var/log/exim_mainlog | grep "$date" | grep "Sender identification" | awk '{print $8}' |cut -d'=' -f2 | sort | uniq -c |sort -rn | head -20 > retorno.txt


cat retorno.txt | head -n1 | awk '{print $1}' > score.txt


if [ score.txt > 500 ]

	then

		 echo "$(cat $archive)" | mail -s "HostDime Brasil :: Possível envio de SPAM partindo do servidor $HOSTNAME de IP $ipsaida" hostdimeteste@gmail.com

    else

    	exit;

fi
