#!/bin/bash

LOG_FILE="../logs/system.log"

while true
do
    echo "[INFO] $(date '+%Y-%m-%d %H:%M:%S') - Customer transaction processed successfully." >> "$LOG_FILE"
    sleep 5

    echo "[INFO] $(date '+%Y-%m-%d %H:%M:%S') - Customer login successful." >> "$LOG_FILE"
    sleep 5

    echo "[WARNING] $(date '+%Y-%m-%d %H:%M:%S') - Database response time is high." >> "$LOG_FILE"
    sleep 5

    echo "[ERROR] $(date '+%Y-%m-%d %H:%M:%S') - Failed to connect to CRM database." >> "$LOG_FILE"
    sleep 5
done
