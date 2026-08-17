#!/bin/bash

LOG_FILE="../logs/system.log"
BACKUP_DIR="../logs/archive"

MAX_SIZE=100

if [ -f "$LOG_FILE" ]
then
    FILE_SIZE=$(wc -c < "$LOG_FILE")

    if [ "$FILE_SIZE" -ge "$MAX_SIZE" ]
    then
        mkdir -p "$BACKUP_DIR"

        TIMESTAMP=$(date '+%Y%m%d_%H%M%S')

        mv "$LOG_FILE" "$BACKUP_DIR/system_$TIMESTAMP.log"

        touch "$LOG_FILE"

        echo "Log rotated successfully."
        echo "Old log saved in: $BACKUP_DIR"
    fi
fi
