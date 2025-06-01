#!/bin/bash

HISTORY_FILE="$HOME/.config/rofi_smb_history"

SERVER=$(cat $HISTORY_FILE | rofi -dmenu -p "Go to: ")
if [ -n "$SERVER" ]; then
    echo $SERVER >> $HISTORY_FILE
    sort -u $HISTORY_FILE -o $HISTORY_FILE
    nautilus "$SERVER"
fi
