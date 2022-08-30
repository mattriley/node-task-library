#!/bin/bash

function react_scripts_cov_report {

    set -e

    # echo "$(node $TASK_LIBRARY_ROOT/src/node/bin/configure-jest-coverage-reporters.js)" > ./package.json

    run_task react-scripts-test \
        --coverage \
        "$@"

}
