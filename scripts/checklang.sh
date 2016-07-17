#!/bin/bash

# Check a .lang file for missing strings
# It verifies that the second string is different from the first string
#    and displays those lines which are identical

filename="$1"

line_number=0
while IFS='' read -r english || [[ -n $line ]]; do
    line_number=$((line_number+1))
    #echo "$line_number $english"
    if [[ $english = \;* ]]; then
        english=$( echo -n ${english} | sed 's/^.//' )
        read -r tline
        line_number=$((line_number+1)) #don't forget to increment again
        if [[ $english == $tline ]]; then
            echo -n "Line: $line_number: "
            echo "$english"
        fi
    fi
done < "$filename"

