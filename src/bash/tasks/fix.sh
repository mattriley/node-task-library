#!/bin/bash

function tasks.fix.infer {

    echo "lint"

}

function tasks.fix {

    lib.run_tasks "$(tasks.fix.infer)" --fix "$@"

}
