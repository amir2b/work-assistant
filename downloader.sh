#!/bin/bash
#
# sudo apt install -y axel

FILE="$1"
if [ -z $FILE ]; then
    if [ ! -f "list.txt" ]; then
        echo "Name of file to download is needed!"
        exit 1
    fi
    FILE="list.txt"
fi

CONNECTION="$2"
[ -z $CONNECTION ] && CONNECTION=8

if [ ! -f $FILE ]; then
    echo
    axel -acn $CONNECTION "$FILE"
    exit 0
fi

while true; do
    while IFS= read -r LINK; do
        if [ ! -z "$LINK" ]; then
            echo
            axel -acn $CONNECTION "$LINK"
        fi
    done <"$FILE"
    sleep 1
done