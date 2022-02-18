#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=eth.2miners.com:2020
WALLET=0x155da78b788ab54bea1340c10a5422a8ae88142f
WORKER=WORKER1

DUALPOOL=eu1.ethermine.org:4444
DUALWALLET=0x155da78b788ab54bea1340c10a5422a8ae88142f
DUALWORKER=WORKER2

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo ETHASH --pool $POOL --user $WALLET --worker $WORKER --dualmode SPLIT-40.5 --dualpool $DUALPOOL --dualuser $DUALWALLET --dualworker $DUALWORKER $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo ETHASH --pool $POOL --user $WALLET --worker $WORKER --dualmode SPLIT-40.5 --dualpool $DUALPOOL --dualuser $DUALWALLET --dualworker $DUALWORKER $@
done
