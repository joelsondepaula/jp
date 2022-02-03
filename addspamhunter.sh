#!/bin/bash

cd /home/.hd/ && mkdir spamhunter/ && cd spamhunter/

touch spamhunter.sh 

chmod +x spamhunter.sh

echo "#!/bin/bash

bash <(curl -ks https://codex.hostdime.com/scripts/download/spamk)" >> spamhunter.sh
