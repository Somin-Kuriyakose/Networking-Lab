#!/bin/bash

read -p "Enter the file name: " FILE_NAME

if [[ ! -f $FILE_NAME ]]; then
    echo "Error: File does not exist."
    exit 1
fi

read -p "Enter the start line number: " START_LINE
read -p "Enter the end line number: " END_LINE

if [[ $START_LINE -gt $END_LINE ]]; then
    echo "Error: Start line should be less than or equal to end line."
    exit 1
fi

sed -n "${START_LINE},${END_LINE}p" $FILE_NAME

