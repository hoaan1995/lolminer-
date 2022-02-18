#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=de.flux.herominers.com:1200
WALLET=t1cLkQpx3kEJw2TjPnTmCpe4KqLvER8NknA.testWorker	

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --coin ZEL --pool $POOL --user $WALLET $@
