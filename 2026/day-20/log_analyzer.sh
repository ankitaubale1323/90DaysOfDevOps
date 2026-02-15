#!/bin/bash

# ==============================
# Log Analyzer Script
# ==============================

# -------- Task 1: Input Validation --------

if [ $# -eq 0 ]; then
    echo " Error: No log file provided."
    echo "Usage: ./log_analyzer.sh <logfile>"
    exit 1
fi

LOG_FILE=$1

if [ ! -f "$LOG_FILE" ]; then
    echo " Error: File does not exist."
    exit 1
fi

echo "🔍 Analyzing log file: $LOG_FILE"
echo "----------------------------------"

# -------- Task 2: Error Count --------

ERROR_COUNT=$(grep -Ei "ERROR|Failed" "$LOG_FILE" | wc -l)
echo "Total ERROR/Failed count: $ERROR_COUNT"

# -------- Task 3: Critical Events --------

echo ""
echo "--- Critical Events ---"
CRITICAL_LINES=$(grep -n "CRITICAL" "$LOG_FILE")

if [ -z "$CRITICAL_LINES" ]; then
    echo "No critical events found."
else
    echo "$CRITICAL_LINES" | while read line; do
        LINE_NUM=$(echo "$line" | cut -d: -f1)
        MESSAGE=$(echo "$line" | cut -d: -f2-)
        echo "Line $LINE_NUM: $MESSAGE"
    done
fi

# -------- Task 4: Top 5 Error Messages --------

echo ""
echo "--- Top 5 Error Messages ---"

TOP_ERRORS=$(grep "ERROR" "$LOG_FILE" \
    | awk '{$1=$2=$3=""; print}' \
    | sort \
    | uniq -c \
    | sort -rn \
    | head -5)

if [ -z "$TOP_ERRORS" ]; then
    echo "No ERROR messages found."
else
    echo "$TOP_ERRORS"
fi

# -------- Task 5: Generate Summary Report --------

DATE=$(date +%Y-%m-%d)
REPORT_FILE="log_report_${DATE}.txt"
TOTAL_LINES=$(wc -l < "$LOG_FILE")

{
echo "========= Log Analysis Report ========="
echo "Date of Analysis: $(date)"
echo "Log File: $LOG_FILE"
echo "Total Lines Processed: $TOTAL_LINES"
echo "Total ERROR/Failed Count: $ERROR_COUNT"
echo ""
echo "--- Top 5 Error Messages ---"
echo "$TOP_ERRORS"
echo ""
echo "--- Critical Events ---"

if [ -z "$CRITICAL_LINES" ]; then
    echo "No critical events found."
else
    echo "$CRITICAL_LINES" | while read line; do
        LINE_NUM=$(echo "$line" | cut -d: -f1)
        MESSAGE=$(echo "$line" | cut -d: -f2-)
        echo "Line $LINE_NUM: $MESSAGE"
    done
fi

echo "======================================="
} > "$REPORT_FILE"

echo ""
echo " Report generated: $REPORT_FILE"

# -------- Task 6: Archive Processed Log --------

ARCHIVE_DIR="archive"

if [ ! -d "$ARCHIVE_DIR" ]; then
    mkdir "$ARCHIVE_DIR"
fi

mv "$LOG_FILE" "$ARCHIVE_DIR/"

echo " Log file moved to archive/"
echo " Analysis completed successfully!"