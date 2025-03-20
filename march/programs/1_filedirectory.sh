#!/bin/bash

echo "Enter the file path:"
read file

if [ -d "$file" ]; then
    echo "$file is a directory."
else
    echo "$file is not a directory."
fi
