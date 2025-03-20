#!/bin/bash

# Prompt the user to enter the file path
echo "Enter the file path:"
read file

# Check if the file exists
if [ ! -e "$file" ]; then
    echo "$file does not exist."
    exit 1
fi

# Check if the file is empty
if [ -s "$file" ]; then
    echo "$file is not empty."
else
    echo "$file is empty."
fi

