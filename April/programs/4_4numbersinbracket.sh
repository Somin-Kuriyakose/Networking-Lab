#!/bin/bash

read -p "Enter the filename: " file

if [ ! -f "$file" ]; then
    echo "File not found!"
    exit 1
fi

sed 's/[0-9]\+/[&]/g' "$file" > "${file}_bracketed"

echo "All numbers in the file have been surrounded with square brackets. The modified file is named '${file}_bracketed'."

