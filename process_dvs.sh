#!/bin/bash
INPUT=dumneavoastră.txt
OLDIFS=$IFS
IFS="|"
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
while read filepath line_number new_line
do
    if [[ -n "$filepath" && -n "$line_number" && -n "$new_line" ]]; then
        english_line_number=$(( $line_number - 1 ))
        english_line=$( sed "${english_line_number}q;d" "${filepath}" )
        translated_line=$( sed "${line_number}q;d" "${filepath}" )
        echo "${filepath} linia ${line_number}"
        echo ""
        echo "${english_line}"
        echo ""
        echo "${translated_line}"
        echo ""
        echo ""
    fi
done < $INPUT
IFS=$OLDIFS

