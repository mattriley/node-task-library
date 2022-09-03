#!/bin/bash

function startup.load_vars {

    [ "$VARS" ] && return 0
    local vars_path="$TASK_LIBRARY_ROOT/src/bash/vars"
    startup.export_functions "$vars_path" > /dev/null
    local internal_var_names; internal_var_names=$(startup.export_functions "$vars_path")

    local env_before; env_before="$(env)"
    source "./task-vars" 2> /dev/null
    local root=${ROOT_OVERRIDE:-"$ROOT"}
    [ "$root" ] && source "$root/task-vars" 2> /dev/null
    local env_after; env_after="$(env)"
    local external_var_names; external_var_names=$(util.uniq_vars "$env_before" "$env_after" | sed 's;=.*;;')

    startup.apply_default_vars "$internal_var_names"

    local stage_upper; stage_upper=$(echo "$STAGE" | tr '[:lower:]' '[:upper:]')
    local staged_var_names; staged_var_names=$(echo "$external_var_names" | sed "s;=.+__$stage_upper;;")

    while IFS= read -r name; do
        local base_name=${name/__$stage_upper/}
        export "$base_name"="${!name}"
    done <<< "$staged_var_names"

    local env_after; env_after="$(env)"
    export VARS; VARS=$(util.uniq_vars "$env_before" "$env_after")
    echo
    
    tasks.print_vars

}
