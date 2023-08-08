#!/bin/bash

function tasks.fix.infer {

    echo "lint"

}

function tasks.fix {

    tasks.run_tasks "$(tasks.fix.infer)" --fix "$@"

}
