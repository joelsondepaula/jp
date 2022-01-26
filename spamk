#!/bin/bash
LANG=en_US.utf8
date=$(date -d "$mon 1 $year" "+%Y-%m-%d")
archive='retorno.txt'
ipsaida=$(hostname -i | tr -s " " | cut -f1 -d " ")


cat /var/log/exim_mainlog | grep "$date" | grep "Sender identification" | awk '{print $8}' |cut -d'=' -f2 | sort | uniq -c |sort -rn | head -20
