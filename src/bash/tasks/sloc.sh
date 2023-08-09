#!/bin/bash

function tasks.sloc.precondition {

    fs.dir_absent "$SRC" && echo "$SRC not found"

}

function tasks.sloc.infer {

    infer.sloc

}

function tasks.sloc {

    mkdir -p "$METRICS" && \
    core.run_tasks "$(tasks.sloc.infer)" "$@"

}
