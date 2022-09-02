#!/bin/bash

function main {

    set -o pipefail

    export IS_SUBTASK; [[ "$*" =~ "--subtask" ]] && IS_SUBTASK="true"
    export TASK_LIBRARY_ROOT="./node_modules/task-library"

    # shellcheck disable=SC1091
    source "$TASK_LIBRARY_ROOT/src/bash/compose.sh" && compose

    function cleanup {
        [ "$IS_SUBTASK" ] && return
        [ "$ERROR_COUNT" -gt 0 ] && echo "❌ FAILURE" && exit 1
        echo "✅ SUCCESS" 
    }

    trap cleanup EXIT

    task_name=${1:-default}
    startup.load_vars && lib.run_task "$task_name"

}
