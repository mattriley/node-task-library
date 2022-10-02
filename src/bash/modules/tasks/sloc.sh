#!/bin/bash

function tasks.sloc.precondition {

    [ ! -d "$SRC" ] && echo "$SRC not found"

}

function tasks.sloc {

    mkdir -p "$METRICS" && \
    lib.run_tasks "$(infer.sloc)" "$@"

}
