#!/bin/bash

function tasks.react_scripts_cov_report {

    # echo "$(node $TASK_LIBRARY_ROOT/src/node/bin/configure-jest-coverage-reporters.js)" > ./package.json

    tasks.run_task "react-scripts-test" --coverage "$@"

}
