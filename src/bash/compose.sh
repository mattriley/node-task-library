#!/bin/bash

function compose {

    export NORM; NORM=$(tput sgr0)
    export BOLD; BOLD=$(tput bold)
    export RED; RED=$(tput setaf 1)
    export GRE; GRE=$(tput setaf 2)
    export YEL; YEL=$(tput setaf 3)

    export SEP=" | "
    export SUPPORTED_TEST_RUNNERS="jest | mocha | tap | tape | zora"

    for module_path in "$TASK_LIBRARY_ROOT/src/bash/modules"/*; do
        for script_path in "$module_path"/*.sh; do
            # shellcheck disable=SC1090
            source "$script_path"
        done
    done

}
