#!/bin/bash
# shellcheck disable=1090

function core.vars.load_vars {

    local vars_root="$TASK_LIBRARY_ROOT/src/bash/vars"
    local internal_var_names; 

    for vars_path in "$vars_root"/*; do 
        for script in "$vars_path"/*.sh; do source "$script"; done
        [ -n "$internal_var_names" ] && internal_var_names+=$'\n'
        internal_var_names+=$(core.vars.parse_function_names "$vars_path")
    done

    local env_before; env_before="$(env)"
    core.vars.source_project_vars
    local env_after; env_after="$(env)"
    local external_var_names; external_var_names="$(core.vars.var_names "$(core.vars.uniq_vars "$env_before" "$env_after")")"

    core.vars.set_default_vars "$internal_var_names"  
    core.vars.set_staged_vars "$external_var_names"

    local env_after; env_after="$(env)"
    export VARS; VARS=$(core.vars.uniq_vars "$env_before" "$env_after")

}
