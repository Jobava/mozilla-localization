#!/bin/bash

# Check a .lang file for missing strings
# It verifies that the second string is different from the first string
#    and displays those lines which are identical

if [ -z "$1" ]; then
    echo "Replace cedilla letters in a .lang file with their comma variants"
    echo "  usage: ./killcedillas.sh filename"
    echo "  replaces Ş with Ș, ş with ș, Ţ with Ț, ţ with ț"
    exit 1
fi

filename="$1"

echo "Removing cedillas from $filename..."

sed -i 's/Ş/Ș/g' "$filename"
sed -i 's/ş/ș/g' "$filename"
sed -i 's/Ţ/Ț/g' "$filename"
sed -i 's/ţ/ț/g' "$filename"

