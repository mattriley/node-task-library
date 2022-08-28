#!/bin/bash

function load_vars {

    [ "$VARS" ] && return 0
    local vars_path="$TASK_LIBRARY_ROOT/src/bash/vars"
    export_functions "$vars_path" > /dev/null
    local internal_var_names=$(export_functions "$vars_path")

    local env_before="$(env)"
    source "./task-vars" 2> /dev/null
    local root=${ROOT_OVERRIDE:-"$ROOT"}
    [ "$root" ] && source "$root/task-vars" 2> /dev/null
    local env_after="$(env)"
    local external_var_names=$(uniq_vars "$env_before" "$env_after" | sed 's;=.*;;')

    while IFS= read -r name; do
        local override_name="${name}_OVERRIDE"
        local val="${!name}"
        [ "${!override_name}" ] && val="${!override_name}" 
        [ -z "${!name}" ] && val="$($name)"
        local val=${val//$SEP/ }
        export "$name"="$val"
    done <<< "$internal_var_names"    

    local stage_upper=$(echo "$STAGE" | tr '[:lower:]' '[:upper:]')
    local staged_var_names=$(echo "$external_var_names" | sed "s;=.+__$stage_upper;;")

    while IFS= read -r name; do
        local base_name=${name/__$stage_upper/}
        export "$base_name"="${!name}"
    done <<< "$staged_var_names"

    local env_after="$(env)"
    export VARS=$(uniq_vars "$env_before" "$env_after")
    echo
    npx task print-vars

}
