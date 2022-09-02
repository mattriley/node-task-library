#!/bin/bash

function tasks.sloc {

    set -e

    [ ! -d "$SRC" ] && util.warn "$SRC not found" && return

    mkdir -p "$METRICS"

    lib.run_task sloc-infer

}
