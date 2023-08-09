#!/bin/bash

function tasks.run.infer {

    echo "start"

}


function tasks.run {

    core.run_tasks "$(tasks.run.infer)" "$@"

}
