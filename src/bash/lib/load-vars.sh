#!/bin/bash

function load_vars {
    [ "$VARS" ] && return 0
    vars_path="$TASK_LIBRARY_ROOT/src/bash/vars"
    export_functions "$vars_path" > /dev/null
    internal_var_names=$(export_functions "$vars_path")

    env_before="$(env)"
    source "./task-vars" 2> /dev/null
    root=${ROOT_OVERRIDE:-"$ROOT"}
    [ "$root" ] && source "$root/task-vars" 2> /dev/null
    env_after="$(env)"
    external_var_names=$(uniq_vars "$env_before" "$env_after" | sed 's;=.*;;')

    # while IFS= read -r name; do
    #     override_name="${name}_OVERRIDE"
    #     [ "${!override_name}" ] && export $name="${!override_name}"
    #     val="$($name)"
    #     val=${val/$SEP/ }
    #     [ -z "${!name}" ] && export $name="$val"
    # done <<< "$internal_var_names"

    while IFS= read -r name; do
        override_name="${name}_OVERRIDE"
        local val="${!name}"
        [ "${!override_name}" ] && val="${!override_name}"        
        [ -z "${!name}" ] && val="$($name)"
        val=${val//$SEP/ }
        export "$name"="$val"
    done <<< "$internal_var_names"    

    stage_upper=$(echo "$STAGE" | tr '[:lower:]' '[:upper:]')
    staged_var_names=$(echo "$external_var_names" | sed "s;=.+__$stage_upper;;")

    while IFS= read -r name; do
        base_name=${name/__$stage_upper/}
        export "$base_name"="${!name}"
    done <<< "$staged_var_names"

    env_after="$(env)"
    export VARS=$(uniq_vars "$env_before" "$env_after")
    echo
    npx task print-vars
}
