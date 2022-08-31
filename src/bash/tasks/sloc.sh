#!/bin/bash

function tasks.sloc {

    set -e

    [ ! -d "$SRC" ] && lib.warn "$SRC not found" && exit

    mkdir -p "$METRICS"

    lib.run_task sloc-infer

}
