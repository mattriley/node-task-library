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
    # external_var_names_excluding_staged=$(echo "$external_var_names" | sed -i '/__/d')

    while IFS= read -r name; do
        override_name="${name}_OVERRIDE"
        [ "${!override_name}" ] && export $name="${!override_name}"
        [ -z "${!name}" ] && export $name="$($name)"
    done <<< "$internal_var_names"

    stage_upper=$(echo "$STAGE" | tr '[:lower:]' '[:upper:]')

    while IFS= read -r name; do
        if [[ "$name" =~ __$stage_upper$ ]]; then
            stageless=${name/__$stage_upper/}
            export $stageless=${!name}
        fi
    done <<< "$external_var_names"


    env_after_excluding_staged="$(env | sed '/__/d')"
    # export VARS=$(sort <(echo "$env_before" ) <(echo "$env_after") | uniq -u)
    export VARS=$(uniq_vars "$env_before" "$env_after_excluding_staged")
    echo
    npx task print-vars
}
