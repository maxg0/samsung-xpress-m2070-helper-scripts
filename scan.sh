#!/usr/bin/env bash

echo 'Press the "Scan to" button on the printer and make sure it is lit'
echo 'When the screen says "Ready to scan | Scan to PC " '
echo 'Press the "OK" button on the scanner'
echo ''
read -rsp 'Press any key when the screen says "Connecting..."' -n1 key
echo ''
echo 'Within a minute, the display should be displaying the text "Scanning..."'

FILENAME=$(date "+%Y-%m-%d-%H:%M:%S.pnm")
echo "Writing to $FILENAME"
if scanimage > $FILENAME; then
    echo "Scan successful"
else
    echo "Scan failed"
    rm $FILENAME
fi
