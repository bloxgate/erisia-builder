#!/run/current-system/sw/bin/bash

set -eux
PATH=/run/current-system/sw/bin/

sleep 5
screen -R @screenName@ -X stuff $'./update-and-loop.sh\n'
