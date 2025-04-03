#!/bin/bash

read -p "Enter the file name: " FILE_NAME

if [[ ! -f $FILE_NAME ]]; then
    echo "Error: File does not exist."
    exit 1
fi

read -p "Enter the word to replace: " OLD_WORD
read -p "Enter the replacement word: " NEW_WORD

sed -i "s/${OLD_WORD}/${NEW_WORD}/g" $FILE_NAME

echo "The word '${OLD_WORD}' has been replaced with '${NEW_WORD}' in ${FILE_NAME}."

