#!/bin/bash

# Check if two arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <file1> <file2>"
    exit 1
fi

file1="$1"
file2="$2"

# Check if both files exist
if [ ! -e "$file1" ] || [ ! -e "$file2" ]; then
    echo "Error: One or both files do not exist."
    exit 1
fi

# Generate a temporary file name in the same directory
temp_file="$(dirname "$file1")/temp_$(basename "$file1")"

# Swap the file names
mv "$file1" "$temp_file"
mv "$file2" "$file1"
mv "$temp_file" "$file2"

echo "Successfully swapped $file1 and $file2."

