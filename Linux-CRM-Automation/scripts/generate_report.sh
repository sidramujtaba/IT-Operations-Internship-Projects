#!/bin/bash

LOG_FILE="../logs/system.log"
ALERT_FILE="../reports/alerts.log"
REPORT_FILE="../reports/daily_report.txt"

TOTAL_EVENTS=$(wc -l < "$LOG_FILE")
ERROR_COUNT=$(grep -c "\[🚨 ERROR ALERT\]" "$ALERT_FILE")
WARNING_COUNT=$(grep -c "\[⚠️ WARNING ALERT\]" "$ALERT_FILE")

if [ "$ERROR_COUNT" -gt 0 ]
then
    STATUS="CRITICAL"
elif [ "$WARNING_COUNT" -gt 0 ]
then
    STATUS="WARNING"
else
    STATUS="NORMAL"
fi

{
    echo "======================================"
    echo "       CRM IT OPERATIONS REPORT"
    echo "======================================"
    echo "Generated: $(date '+%Y-%m-%d %H:%M:%S')"
    echo ""
    echo "Total Log Events: $TOTAL_EVENTS"
    echo "Total Errors:     $ERROR_COUNT"
    echo "Total Warnings:   $WARNING_COUNT"
    echo "System Status:    $STATUS"
    echo ""
    echo "======================================"
} > "$REPORT_FILE"

echo "Report generated successfully."
echo "System Status: $STATUS"
