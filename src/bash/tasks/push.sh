#!/bin/bash

function tasks.push.infer {

    infer.push

}


function tasks.push {

    core.run_tasks "$(tasks.push.infer)" "$@"

}
