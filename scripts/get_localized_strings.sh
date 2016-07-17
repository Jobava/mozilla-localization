#!/bin/bash

# Extract only the translated strings from a .lang file, line by line

if [ -z "$1" ]; then
    echo "Get localized strings from a .lang file"
    echo "  usage: get_localized_strings filename [-l]"
    echo "  you get line numbers with the optional -l switch"
    exit 1
fi

print_line_number=0
if [[ $2 == "-l" ]]; then
    print_line_number=1
fi

filename="$1"
line_number=0
while IFS='' read -r english || [[ -n $english ]]; do
    line_number=$((line_number+1))
    if [[ $english = \;* ]]; then
        read -r tline
        line_number=$((line_number+1)) #don't forget to increment again
        if [[ $print_line_number == 1 ]]; then
            echo "$line_number: $tline"
        else
            echo "$tline"
        fi
    fi
done < "$filename"

