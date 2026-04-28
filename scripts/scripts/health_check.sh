scripts/health_check.sh

#!/bin/bash

PROCESS="claims_app.py"

ps -ef | grep $PROCESS | grep -v grep > /dev/null

if [ $? -ne 0 ]; then
    echo "Claims service DOWN - Restarting"
    cd ../app
    nohup python3 claims_app.py &
else
    echo "Claims service is running"
fi
