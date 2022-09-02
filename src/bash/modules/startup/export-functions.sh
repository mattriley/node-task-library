#!/bin/bash

function startup.export_functions {

    for script in "$1"/*.sh; do
        local funcs; funcs=$(startup.parse_function_names "$script")
        # shellcheck disable=SC1090
        source "$script"
        while IFS= read -r name; do 
            echo "$name"
        done <<< "$funcs"
    done

}
