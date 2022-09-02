#!/bin/bash

function main {

    set -o pipefail

    NORM=$(tput sgr0)
    BOLD=$(tput bold)
    RED=$(tput setaf 1)
    GRE=$(tput setaf 2)
    YEL=$(tput setaf 3)

    export NORM BOLD RED GRE YEL
    export SEP=" | "
    export TASK_LIBRARY_ROOT="./node_modules/task-library"
    export SUPPORTED_TEST_RUNNERS="jest | mocha | tap | tape | zora"

    for module_path in "$TASK_LIBRARY_ROOT/src/bash/modules"/*; do
        for script_path in "$module_path"/*.sh; do
            # shellcheck disable=SC1090
            source "$script_path"
        done
    done

    export is_subtask; [[ "$@" =~ "--subtask" ]] && is_subtask="true"

    function cleanup()
    {
        # ...
        # :
        [ -z "$is_subtask" ] && echo "$ANY_ERR" && exit $ANY_ERR
    }

    trap cleanup EXIT

    task_name=${1:-default}
    lib.load_vars && lib.run_task "$task_name"

}
