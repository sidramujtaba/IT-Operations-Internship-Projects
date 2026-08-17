#!/bin/bash

echo "======================================"
echo "   CRM SYSTEM MAINTENANCE"
echo "======================================"

echo ""
echo "[1] Checking log rotation..."
bash rotate_logs.sh

echo ""
echo "[2] Generating report..."
bash generate_report.sh

echo ""
echo "Maintenance completed."
