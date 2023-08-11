#!/bin/bash

function tasks.run.infer {

    echo "start"

}


function tasks.run {

    task_runner.run_tasks "$(tasks.run.infer)" "$@"

}
