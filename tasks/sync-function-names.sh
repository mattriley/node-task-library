#!/bin/bash

function sync {
    ( cd "./src/bash" || exit 1
    for script_path in "$1"/*.sh; do
        echo "$script_path"
        script=$(<"$script_path")
        namespace=$(dirname "$script_path")
        script_name=$(basename "$script_path" .sh)
        function_name=${script_name//-/_}
        function_name="$namespace.$function_name"
        echo "$function_name"
        # shellcheck disable=SC2001
        new_script=$(sed "s/^function.*{/function $function_name {/" <<< "$script")
        echo "$new_script"
        echo "$new_script" > "$script_path"
    done )
}

sync 'util'
sync 'lib'
sync 'list'
sync 'fs'
sync 'npm'
sync 'node'
sync 'aws'
sync 'tasks'
