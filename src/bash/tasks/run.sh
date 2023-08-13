#!/bin/bash

function tasks.run.infer {

    echo "start"

}


function tasks.run {

    core.tasks.run_tasks "$(tasks.run.infer)" "$@"

}
