#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

ETHPOOL=eu1.ethermine.org:4444
ETHWALLET=0x155da78b788ab54bea1340c10a5422a8ae88142f
ETHWORKER=lolMinerWorker

TONPOOL=https://server1.whalestonpool.com
TONWALLET=EQCTMUSkNT0GDfoWTESpHmp1CH4UdSekrD3rcd1PtFoktqXC

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo ETHASH --pool $ETHPOOL --user $ETHWALLET --dualmode TONDUAL --dualpool $TONPOOL --dualuser $TONWALLET --worker $ETHWORKER $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo ETHASH --pool $ETHPOOL --user $ETHWALLET --dualmode TONDUAL --dualpool $TONPOOL --dualuser $TONWALLET --worker $ETHWORKER $@
done
    
    
