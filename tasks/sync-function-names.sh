#!/bin/bash

TASK_LIBRARY_ROOT="./node_modules/task-library"

for module_path in "$TASK_LIBRARY_ROOT/src/bash/modules"/*; do
    for script_path in "$module_path"/*.sh; do
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
    done
done
