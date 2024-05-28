#!/usr/bin/env bash

FILENAME=$(date +%F-%H-%M.org)

touch "./jobs/$FILENAME" 

echo "File $FILENAME created"

echo "Searching for jobs..."

python3 pci-ultimas.py > ./jobs/$FILENAME

echo "added some jobs to $FILENAME."

less ./jobs/$FILENAME
