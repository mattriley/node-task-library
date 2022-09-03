#!/bin/bash

function startup.set_staged_vars {

    local external_var_names="$1"
    local stage_upper; stage_upper=$(echo "$STAGE" | tr '[:lower:]' '[:upper:]')
    local staged_var_names; staged_var_names=$(echo "$external_var_names" | sed "s;=.+__$stage_upper;;")

    while IFS= read -r name; do
        local base_name=${name/__$stage_upper/}
        export "$base_name"="${!name}"
    done <<< "$staged_var_names"

}
