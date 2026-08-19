#!/bin/bash

# Log file path - Fixed to correct location
LOG_FILE="../logs/system.log"
REPORT_FILE="../reports/system_report.txt"

# Create reports directory if it doesn't exist
mkdir -p ../reports

echo "=========================================" > $REPORT_FILE
echo "CRM LOG MONITOR REPORT" >> $REPORT_FILE
echo "=========================================" >> $REPORT_FILE
echo "" >> $REPORT_FILE

# Check if log file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "ERROR: Log file not found at $LOG_FILE" >> $REPORT_FILE
    echo "Please run log_generator.sh first." >> $REPORT_FILE
    echo "=========================================" >> $REPORT_FILE
    echo "Report generated at $(date)" >> $REPORT_FILE
    echo "=========================================" >> $REPORT_FILE
    echo "Report created in ../reports/system_report.txt"
    exit 1
fi

echo "System log monitoring started." >> $REPORT_FILE
echo "Checking for important events..." >> $REPORT_FILE
echo "" >> $REPORT_FILE

# Count different log types
ERROR_COUNT=$(grep -c "ERROR" $LOG_FILE 2>/dev/null || echo "0")
WARNING_COUNT=$(grep -c "WARNING" $LOG_FILE 2>/dev/null || echo "0")
INFO_COUNT=$(grep -c "INFO" $LOG_FILE 2>/dev/null || echo "0")
TOTAL_LINES=$(wc -l < $LOG_FILE 2>/dev/null || echo "0")

echo "LOG STATISTICS:" >> $REPORT_FILE
echo "-----------------------------------------" >> $REPORT_FILE
echo "Total log entries: $TOTAL_LINES" >> $REPORT_FILE
echo "INFO events: $INFO_COUNT" >> $REPORT_FILE
echo "WARNING events: $WARNING_COUNT" >> $REPORT_FILE
echo "ERROR events: $ERROR_COUNT" >> $REPORT_FILE
echo "" >> $REPORT_FILE

echo "RECENT ERROR LOGS:" >> $REPORT_FILE
echo "-----------------------------------------" >> $REPORT_FILE
grep "ERROR" $LOG_FILE 2>/dev/null | tail -5 >> $REPORT_FILE || echo "No errors found" >> $REPORT_FILE
echo "" >> $REPORT_FILE

echo "RECENT WARNING LOGS:" >> $REPORT_FILE
echo "-----------------------------------------" >> $REPORT_FILE
grep "WARNING" $LOG_FILE 2>/dev/null | tail -5 >> $REPORT_FILE || echo "No warnings found" >> $REPORT_FILE
echo "" >> $REPORT_FILE

echo "=========================================" >> $REPORT_FILE
echo "Report generated at $(date)" >> $REPORT_FILE
echo "=========================================" >> $REPORT_FILE

echo "Report created successfully in ../reports/system_report.txt"
