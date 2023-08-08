#!/bin/bash

function tasks.sloc.precondition {

    [ ! -d "$SRC" ] && echo "$SRC not found"

}

function tasks.sloc.infer {

    infer.sloc

}

function tasks.sloc {

    mkdir -p "$METRICS" && \
    tasks.run_tasks "$(tasks.sloc.infer)" "$@"

}
