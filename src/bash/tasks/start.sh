#!/bin/bash

function tasks.start.infer {

    infer.start

}

function tasks.start {

    lib.run_tasks "$(tasks.start.infer)" "$@"

}
