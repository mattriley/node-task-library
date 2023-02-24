#!/bin/bash

function tasks.push.infer {

    infer.push

}


function tasks.push {

    lib.run_tasks "$(tasks.push.infer)" "$@"

}
