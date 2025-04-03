#!/bin/bash

read -p "Enter the file name: " FILE_NAME

if [[ ! -f $FILE_NAME ]]; then
    echo "Error: File does not exist."
    exit 1
fi

read -p "Enter the line number to delete: " LINE_NUMBER

sed -i "${LINE_NUMBER}d" $FILE_NAME

echo "Line $LINE_NUMBER has been deleted from $FILE_NAME."

