#!/bin/bash
# shellcheck disable=SC1090,SC1091

source "$(dirname "${BASH_SOURCE[0]}")/globals.sh"

function main {

    set -o pipefail

    export IS_SUBTASK; [[ "$*" =~ "--subtask" ]] && IS_SUBTASK="true"

    for module_path in "$TASK_LIBRARY_ROOT/src/bash/modules"/*; do
        for script_path in "$module_path"/*.sh; do
            source "$script_path"
        done
    done

    trap startup.on_term SIGTERM SIGINT
    trap startup.on_exit EXIT

    local task_name=${1:-default}
    startup.load_vars 
    [ ! "$task_name" = "vars" ] && [ -z "$IS_SUBTASK" ] && tasks.print_vars
    lib.run_task "$task_name"

}
