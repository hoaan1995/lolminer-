#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=asia-eth.2miners.com:2020
WALLET=0x47de6F010E17024c15c7d617550b6Fcba1C8eA93.zxcr-9999

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo ETHASH --pool $POOL --user $WALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo ETHASH --pool $POOL --user $WALLET $@
done
