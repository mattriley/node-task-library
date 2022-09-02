#!/bin/bash

function startup.parse_function_names {

    local script="$1"
    local pattern='^function (.+) '
    while IFS= read -r line; do
        [[ $line =~ $pattern ]] && echo "${BASH_REMATCH[1]}"
    done < "$script"

}
