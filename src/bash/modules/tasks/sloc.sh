#!/bin/bash

function tasks.sloc {

    set -e

    [ ! -d "$SRC" ] && util.warn "$SRC not found" && exit

    mkdir -p "$METRICS"

    lib.run_task sloc-infer

}
