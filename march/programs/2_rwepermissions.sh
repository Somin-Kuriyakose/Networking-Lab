#!/bin/bash

# Prompt the user to enter the file path
echo "Enter the file path:"
read file

# Check if the file exists
if [ ! -e "$file" ]; then
    echo "$file does not exist."
    exit 1
fi

# Check for permissions
if [ -r "$file" ] && [ -w "$file" ] && [ -x "$file" ]; then
    echo "$file has read, write, and execute permissions."
else
    echo "$file does not have all the required permissions."
    echo "Permissions breakdown:"
    [ -r "$file" ] && echo "Readable" || echo "Not readable"
    [ -w "$file" ] && echo "Writable" || echo "Not writable"
    [ -x "$file" ] && echo "Executable" || echo "Not executable"
fi

