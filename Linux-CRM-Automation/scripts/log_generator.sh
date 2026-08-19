#!/bin/bash

# Log file path - Fixed to correct location
LOG_FILE="../logs/system.log"

# Create logs directory if it doesn't exist
mkdir -p ../logs

echo "=========================================" > $LOG_FILE
echo "CRM LOG GENERATOR" >> $LOG_FILE
echo "=========================================" >> $LOG_FILE
echo "" >> $LOG_FILE

for i in {1..10}; do
    TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
    
    # Randomly select log type
    RANDOM_TYPE=$((RANDOM % 3))
    
    case $RANDOM_TYPE in
        0)
            echo "[INFO] $TIMESTAMP - Customer login successful." >> $LOG_FILE
            ;;
        1)
            echo "[WARNING] $TIMESTAMP - Database response time is high." >> $LOG_FILE
            ;;
        2)
            echo "[ERROR] $TIMESTAMP - Failed to connect to CRM database." >> $LOG_FILE
            ;;
    esac
    
    sleep 1
done

echo "" >> $LOG_FILE
echo "=========================================" >> $LOG_FILE
echo "Log generation completed at $(date)" >> $LOG_FILE
echo "=========================================" >> $LOG_FILE

echo "Logs generated successfully in ../logs/system.log"
