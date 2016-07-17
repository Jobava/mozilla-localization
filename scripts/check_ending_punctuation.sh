#!/bin/bash

# Extract only the translated strings from a .lang file, line by line

if [ -z "$1" ]; then
    echo "Fix the ending punctuation in a .lang file"
    echo "  usage: ./check_ending_punctuation.sh filename"
    echo "  if English string ends in a . , ; ? !"
    echo "  and the localized string does not end in that"
    echo "  add the correct ending to the localized string"
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
        english=${english:1} #The text without the ;
        
        #get the very last character of the english string
        epunc=${english:${#english} - 1}

        read -r tline
        tpunc=${tline:${#tline} - 1}

        if [[ $epunc == "." || $epunc == "," || $epunc == ";" || $epunc == "?" || $epunc == "!" || 
              $tpunc == "." || $tpunc == "," || $tpunc == ";" || $tpunc == "?" || $tpunc == "!" ]]; then
            if [[ $tpunc != $epunc ]]; then
                echo "$filename"
                echo "line:$line_number:$english"
                echo "     $((line_number + 1)):$tline"
            fi

        fi

        line_number=$((line_number+1)) #don't forget to increment again
    fi
done < "$filename"

