#!/bin/bash

function core.vars.set_default_vars {

    local internal_var_names="$1"

    while IFS= read -r name; do
        local override_name="${name}_OVERRIDE"
        local val="${!name}"
        [ "${!override_name}" ] && val="${!override_name}" 
        [ -z "${!name}" ] && val="$($name)"
        # local val=${val//$SEP/ }
        local val=${val// / }
        export "$name"="$val"
    done <<< "$internal_var_names"    

}
