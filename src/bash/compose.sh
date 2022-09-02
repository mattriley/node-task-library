#!/bin/bash

function compose {

    NORM=$(tput sgr0)
    BOLD=$(tput bold)
    RED=$(tput setaf 1)
    GRE=$(tput setaf 2)
    YEL=$(tput setaf 3)

    export NORM BOLD RED GRE YEL
    export ERROR_COUNT=0
    export SEP=" | "
    export TASK_LIBRARY_ROOT="./node_modules/task-library"
    export SUPPORTED_TEST_RUNNERS="jest | mocha | tap | tape | zora"

    for module_path in "$TASK_LIBRARY_ROOT/src/bash/modules"/*; do
        for script_path in "$module_path"/*.sh; do
            # shellcheck disable=SC1090
            source "$script_path"
        done
    done

}
