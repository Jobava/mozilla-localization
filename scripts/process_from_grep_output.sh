#!/bin/bash
INPUT=dvs.txt
OLDIFS=$IFS
IFS="|"
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
while read filepath line_number new_line
do
    if [[ -n "$filepath" && -n "$line_number" && -n "$new_line" ]]; then
        old_line=$( sed "${line_number}q;d" "${filepath}" )
        echo "Old ${line_numbe} line: $old_line"
        echo "New ${line_numbe} line: $new_line"
        sed -i "${line_number}s/${old_line}/${new_line}/" "${filepath}"
    fi
done < $INPUT
IFS=$OLDIFS

