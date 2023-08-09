#!/bin/bash
# shellcheck disable=2317

function startup.set_staged_vars {

    local external_var_names="$1"
    local stage_upper; stage_upper=$(echo "$STAGE" | tr '[:lower:]' '[:upper:]')
    local staged_var_names; 

    # TODO: Review this check
    # shellcheck disable=2001
    staged_var_names=$(echo "$external_var_names" | sed "s;=.+__$stage_upper;;")

    function export_staged_var {
        local name="$1"
        local base_name=${name/__$stage_upper/}
        export "$base_name"="${!name}"
    }

    list.each "$staged_var_names" export_staged_var

}
