#!/bin/bash
LANG=en_US.utf8
date=$(date -d "$mon 1 $year" "+%Y-%m-%d")


rm -f retorno.txt
touch retorno.txt
archive='retorno.txt'
trigger1=$(sed '3!d' retorno.txt | awk '{print $1}')
trigger2=$(sed '24!d' retorno.txt | awk '{print $1}')
trigger10=500
ipsaida=$(hostname -i | tr -s " " | cut -f1 -d " ")


echo -e "\nLogins used to send e-mail:" >> retorno.txt

cat /var/log/exim_mainlog | grep "$date" | grep "Sender identification" | awk '{print $8}' |cut -d'=' -f2 | sort | uniq -c |sort -rn | head -21 >> retorno.txt

sed -i '/mailnull/d' retorno.txt

echo -e "\nDirectories used to send e-mail:" >> retorno.txt


cat /var/log/exim_mainlog | grep "$date" | grep -hoP "(?<=cwd=)/[^ ]+" /var/log/exim_mainlog | sort | uniq -c | sort -nr | head -21 >> retorno.txt

sed -i '\/var\/spool\/exim/d' retorno.txt && sed -i '\/etc\/csf/d' retorno.txt && sed -i '\/root/d' retorno.txt


if [ "$trigger1" -ge "$trigger10" ]; then

                #echo "$(cat $archive)" | mail -s "HostDime Brasil :: Possível envio de SPAM partindo do servidor $HOSTNAME de IP $ipsaida" hostdimecheck@hotmail.com
                echo "$trigger1 is bigger than $trigger10"
 #   else

  #              if [ "$trigger2" -ge "$trigger10" ]; then


                                #echo "$(cat $archive)" | mail -s "HostDime Brasil :: Possível envio de SPAM partindo do servidor $HOSTNAME de IP $ipsaida" hostdimecheck@hotmail.com
                                
                        else
                            	echo "$trigger1 is less than $trigger10"
                #fi
fi

rm -f retorno.txt
