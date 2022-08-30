#!/bin/bash

function sloc {

    set -e

    [ ! -d "$SRC" ] && warn "$SRC not found" && exit

    mkdir -p "$METRICS"

    run_task sloc-infer

}
