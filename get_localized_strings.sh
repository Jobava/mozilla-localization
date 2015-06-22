# Extract only the translated strings from a .lang file, line by line

#!/bin/bash
filename="$1"

while IFS='' read -r english || [[ -n $line ]]; do
    if [[ $english = \;* ]]; then
        read -r tline
        echo "$tline"
    fi
done < "$filename"

