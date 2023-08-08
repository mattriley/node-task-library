#!/bin/bash

function tasks.push.infer {

    infer.push

}


function tasks.push {

    tasks.run_tasks "$(tasks.push.infer)" "$@"

}
