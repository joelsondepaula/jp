#!/bin/bash

cd /home/.hd/

touch msblcheck.sh

chmod +x msblcheck.sh

echo '#!/bin/bash
archive='msblocklistcheck.txt'
ipsaida=$(hostname -i | tr -s " " | cut -f1 -d " ")

echo "TesteHDBR" | /usr/sbin/exim -r root@$HOSTNAME -v -odf testehostdime@hotmail.com &> 'msblocklistcheck.txt'
        if grep -iq "Please contact your Internet service provider since part of their network is on our block list" "msblocklistcheck.txt"; then
                echo "$(cat msblocklistcheck.txt)" | mail -s "HostDime Brasil :: O servidor $HOSTNAME de IP "$ipsaida" se encontra listado na Microsoft SNDS Blocklist" abuse@hostdime.com.br
        else
            	exit;
        fi
rm -f msblocklistcheck.txt' > msblcheck.sh

exit
