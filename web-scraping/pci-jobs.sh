#!/usr/bin/env bash

FILENAME=$(date +%F.org)

touch "./jobs/$FILENAME" 

echo "File $FILENAME created at $(date)"

echo "Searching for jobs..."

echo "*** $(date)" >> ./jobs/$FILENAME
echo " " >> ./jobs/$FILENAME

python3 pci-ultimas.py >> ./jobs/$FILENAME
echo " " >> ./jobs/$FILENAME

echo "added some jobs to $FILENAME."
