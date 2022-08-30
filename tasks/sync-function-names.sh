#!/bin/bash

function sync {
    local module_path="./src/bash/$1"
    for script_path in "$module_path"/*.sh; do
        echo "$script_path"
        script=$(<"$script_path")
        script_name=$(basename "$script_path" .sh)
        function_name=${script_name//-/_}
        # shellcheck disable=SC2001
        new_script=$(sed "s/^function.*{/function $function_name {/" <<< "$script")
        echo "$new_script"
        echo "$new_script" > "$script_path"
    done
}

sync 'util'
