#!/bin/bash

read -p "Enter the filename: " file

if [ ! -f "$file" ]; then
    echo "File not found!"
    exit 1
fi

sed 's/[0-9]//g' "$file" > "${file}_nodigits"

echo "Digits removed. The new file is named '${file}_nodigits'."

