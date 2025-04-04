#!/bin/bash

read -p "Enter the filename: " file

if [ ! -f "$file" ]; then
    echo "File not found!"
    exit 1
fi

read -p "Enter the text to append: " append_text

sed -i "/\.$/a $append_text" "$file"

echo "The text '$append_text' has been appended after each line ending with a period in $file."
