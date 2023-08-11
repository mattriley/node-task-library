#!/bin/bash

function tasks.push.infer {

    infer.push

}


function tasks.push {

    task_runner.run_tasks "$(tasks.push.infer)" "$@"

}
