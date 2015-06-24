# Extract only the translated strings from a .lang file, line by line

#!/bin/bash
if [ -z "$1" ]; then
    echo "Get strings from a .lang file"
    echo "  usage: get_strings filename [-l]"
    echo "  you get strings in the format: line_no|en:english_text|line_no|ro:localized_text|"
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
        english=${english:1}
        read -r tline
        if [[ $print_line_number == 1 ]]; then
            echo "$line_number|en:$english|$((line_number + 1))|ro:$tline|"
        else
            echo "|$english|$tline|"
        fi
        line_number=$((line_number+1)) #don't forget to increment again
    fi
done < "$filename"

