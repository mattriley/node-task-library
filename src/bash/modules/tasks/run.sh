#!/bin/bash

function tasks.run.infer {

    echo "start"

}


function tasks.run {

    lib.run_tasks "$(tasks.run.infer)" "$@"

}
