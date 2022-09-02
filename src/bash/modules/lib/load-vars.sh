#!/bin/bash

function lib.load_vars {

    function import {
        local path="$TASK_LIBRARY_ROOT/src/bash/$1"
        export_functions "$path" > /dev/null
        [ "$1" = "-p" ] && echo "$path"
    }

    function export_functions {
        for script in "$1"/*.sh; do
            funcs=$(extract_function_names "$script")
            # shellcheck disable=SC1090
            source "$script"
            while IFS= read -r name; do 
                # export -f "$name";
                echo "$name"
            done <<< "$funcs"
        done
    }

    function extract_function_names {
        script="$1"
        pattern='^function (.+) '
        while IFS= read -r line; do
            [[ $line =~ $pattern ]] && echo "${BASH_REMATCH[1]}"
        done < "$script"
    }

    [ "$VARS" ] && return 0
    import "vars"
    local vars_path="$TASK_LIBRARY_ROOT/src/bash/vars"
    export_functions "$vars_path" > /dev/null
    local internal_var_names
    internal_var_names=$(export_functions "$vars_path")

    local env_before
    env_before="$(env)"
    source "./task-vars" 2> /dev/null
    local root=${ROOT_OVERRIDE:-"$ROOT"}
    [ "$root" ] && source "$root/task-vars" 2> /dev/null
    local env_after
    env_after="$(env)"
    local external_var_names
    external_var_names=$(util.uniq_vars "$env_before" "$env_after" | sed 's;=.*;;')

    while IFS= read -r name; do
        local override_name="${name}_OVERRIDE"
        local val="${!name}"
        [ "${!override_name}" ] && val="${!override_name}" 
        [ -z "${!name}" ] && val="$($name)"
        local val=${val//$SEP/ }
        export "$name"="$val"
    done <<< "$internal_var_names"    

    local stage_upper
    stage_upper=$(echo "$STAGE" | tr '[:lower:]' '[:upper:]')
    local staged_var_names
    staged_var_names=$(echo "$external_var_names" | sed "s;=.+__$stage_upper;;")

    while IFS= read -r name; do
        local base_name=${name/__$stage_upper/}
        export "$base_name"="${!name}"
    done <<< "$staged_var_names"

    local env_after
    env_after="$(env)"
    VARS=$(util.uniq_vars "$env_before" "$env_after")
    export VARS
    echo
    
    tasks.print_vars

}
