#!/bin/bash

function tasks.fix.infer {

    echo "lint"

}

function tasks.fix {

    core.tasks.run_tasks "$(tasks.fix.infer)" --fix "$@"

}
