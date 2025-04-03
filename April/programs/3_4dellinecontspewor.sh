#!/bin/bash

read -p "Enter the file name: " FILE_NAME

if [[ ! -f $FILE_NAME ]]; then
    echo "Error: File does not exist."
    exit 1
fi

read -p "Enter the word to search and delete: " SEARCH_WORD

sed -i "/${SEARCH_WORD}/d" $FILE_NAME

echo "Lines containing the word '${SEARCH_WORD}' have been deleted from ${FILE_NAME}."

