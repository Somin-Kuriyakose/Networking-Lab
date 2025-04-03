#!/bin/bash

read -p "Enter the file name: " FILE_NAME

if [[ ! -f $FILE_NAME ]]; then
    echo "Error: File does not exist."
    exit 1
fi

read -p "Enter the text to append: " APPEND_TEXT

sed -i "s/$/${APPEND_TEXT}/" $FILE_NAME

echo "The text '${APPEND_TEXT}' has been appended to every line in ${FILE_NAME}."

