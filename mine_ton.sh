#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=https://server1.whalestonpool.com
WALLET=EQCTMUSkNT0GDfoWTESpHmp1CH4UdSekrD3rcd1PtFoktqXC

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo TON --pool $POOL --user $WALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo TON --pool $POOL --user $WALLET $@
done
