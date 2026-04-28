#!/bin/bash

LOG="../logs/claims.log"

tail -Fn0 $LOG | while read line
do
    echo "$line" | grep "ERROR" > /dev/null
    if [ $? -eq 0 ]; then
        echo "🚨 CLAIM FAILURE DETECTED"
        ../alerts/alert.sh "$line"
    fi
done
