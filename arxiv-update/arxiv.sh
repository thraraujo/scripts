#!/usr/bin/env bash

ARXIV=(hep-th math-ph nlin-ph cond-mat.stat-mech)

BASE_DIR="/home/thiago/.config/scripts/arxiv-update/"
FILENAME=$(date +%F)

for url in "${ARXIV[@]}"

do
    touch "$BASE_DIR/papers/$FILENAME-$url-temp.org"
    TEMP_FILE="$BASE_DIR/papers/$FILENAME-$url-temp.org"
    touch "$BASE_DIR/papers/$FILENAME-$url.org"
    OUTPUT_FILE="$BASE_DIR/papers/$FILENAME-$url.org"

    python3 arxiv.py "$url" > $TEMP_FILE

    grep -i -e 'vieira' -e 'bogomolny' -e 'carrollian' $TEMP_FILE >> $OUTPUT_FILE

    rm "$TEMP_FILE"
done

#python3 arxiv.py  
