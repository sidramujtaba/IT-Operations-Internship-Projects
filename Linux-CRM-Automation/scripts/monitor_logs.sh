#!/bin/bash

LOG_FILE="../logs/system.log"
ALERT_FILE="../reports/alerts.log"

echo "======================================"
echo "       CRM REAL-TIME MONITOR"
echo "======================================"
echo "Monitoring: $LOG_FILE"
echo "Waiting for new events..."
echo ""

tail -n 0 -f "$LOG_FILE" | while read line
do
    if echo "$line" | grep -q "\[ERROR\]"
    then
        echo "[🚨 ERROR ALERT] $line"
        echo "[🚨 ERROR ALERT] $line" >> "$ALERT_FILE"

    elif echo "$line" | grep -q "\[WARNING\]"
    then
        echo "[⚠️ WARNING ALERT] $line"
        echo "[⚠️ WARNING ALERT] $line" >> "$ALERT_FILE"
    fi
done
