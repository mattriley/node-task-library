#!/bin/bash

function startup.set_staged_vars {

    local external_var_names="$1"
    local stage_upper; stage_upper=$(echo "$STAGE" | tr '[:lower:]' '[:upper:]')
    local staged_var_names; staged_var_names=$(echo "$external_var_names" | sed "s;=.+__$stage_upper;;")

    function callback {
        local name="$1"
        local base_name=${name/__$stage_upper/}
        export "$base_name"="${!name}"
    }

    list.each "$staged_var_names"

}
