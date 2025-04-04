#!/bin/bash

read -p "Enter the filename: " file

if [ ! -f "$file" ]; then
    echo "File not found!"
    exit 1
fi

awk '{print $0; if($0 ~ /\.$/) print "Hai Hello This is the appended line."}' "$file" > "${file}_modified"

echo "Lines appended after each line ending with a period. The modified file is named '${file}_modified'."

