#!/bin/bash

if [ -z "$1" ]; then
    echo "Check that there are exactly two consecutive empty lines between"
    echo "    groups of nonempty lines."
    echo " "
    echo " Usage: ./empty_line_check.sh filename"
    echo " Possible usage: find . type f -name \"*.lang\" -exec \\"
    echo "  ./empty_line_check.sh {} \;"

    exit 1
fi

filename="$1"

line_number=0        # current line number
consecutive_empty=0  # consecutively empty lines
success=1            # success=1 if there are no errors
line=""              # current line
begin_counting=0     # ignore the empty lines at the beginning

while IFS='' read -r line || [[ -n $line ]]; do
    line_number=$((line_number+1))
    
    if [[ $line = "" ]]; then
        if [[ $begin_counting = 1 ]]; then
            consecutive_empty=$((consecutive_empty+1))
        fi
    else
        begin_counting=1
    fi
    
    #Only begin the count after at least 1 nonempty line
    
    if [[ $begin_counting = 1 && \
          $consecutive_empty = 1 && $line != "" ]]; then
        success=0
        echo " At line $line_number there needs to be an additional newline"
    fi
    
    if [[ $begin_counting = 1 && \
          $consecutive_empty > 2 && $line != "" ]]; then
        success=0
        echo " At line $line_number are too many newlines"
    fi
    
    if [[ $line != "" ]]; then
        too_many_lines=0
        consecutive_empty=0
    fi
done < "$filename"

last=$( tail -1 "$filename" | cat -A )
second_to_last=$( tail -2 "$filename" | head -1 | cat -A )

if [[ $last != "$" || $second_to_last != "$" ]]; then
    echo " Last two lines must be empty!"
    success=0
fi

if [[ $success = 1 ]]; then
    echo " Success!"
    exit 0
else
    echo " Fail!"
    exit 1
fi


