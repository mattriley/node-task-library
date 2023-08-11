#!/bin/bash

function tasks.fix.infer {

    echo "lint"

}

function tasks.fix {

    task_runner.run_tasks "$(tasks.fix.infer)" --fix "$@"

}
