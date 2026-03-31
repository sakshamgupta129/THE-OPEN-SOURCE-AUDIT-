#!/bin/bash

LOGFILE=$1
KEYWORD=${2:-"error"}

echo "=============================================="
echo "              LOG FILE ANALYZER"
echo "=============================================="

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File not found."
    exit 1
fi

COUNT=$(grep -i "$KEYWORD" "$LOGFILE" | wc -l)

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
