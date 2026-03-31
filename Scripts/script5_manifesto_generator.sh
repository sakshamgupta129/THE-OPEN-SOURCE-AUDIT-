#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Saksham Gupta

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does freedom mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "Open Source Manifesto" > $OUTPUT
echo "Generated on: $DATE" >> $OUTPUT
echo "" >> $OUTPUT
echo "I use $TOOL every day because open-source software gives me $FREEDOM." >> $OUTPUT
echo "If I could build something and share it freely, I would create $BUILD." >> $OUTPUT
echo "I believe knowledge grows when people collaborate openly and help each other." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
