#!/bin/bash
# shellcheck disable=SC1090,SC1091

set -o pipefail

export TASK_LIBRARY_ROOT="./node_modules/task-library"
export SEP=" | "

function main {

    for module_path in "$TASK_LIBRARY_ROOT/src/bash/modules"/*; do
        for script_path in "$module_path"/*.sh; do
            source "$script_path"
        done
    done

    { [ "$VARS" ] && export IS_SUBTASK="true"; } || startup.load_vars

    trap startup.on_term SIGTERM SIGINT
    trap startup.on_exit EXIT

    local task_name=${1:-default}
    local task_args=${*:2}
    [ ! "$task_name" = "vars" ] && [ -z "$IS_SUBTASK" ] && tasks.print_vars
    lib.run_task "$task_name" "$task_args"

}
