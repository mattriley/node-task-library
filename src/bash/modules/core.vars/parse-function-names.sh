#!/bin/bash

function core.vars.parse_function_names {

    for script in "$1"/*.sh; do
        local pattern='^function (.+) '
        while IFS= read -r line; do
            [[ $line =~ $pattern ]] && echo "${BASH_REMATCH[1]}"
        done < "$script"
    done

}
