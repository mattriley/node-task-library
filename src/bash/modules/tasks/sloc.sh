#!/bin/bash

function tasks.sloc {

    [ ! -d "$SRC" ] && ui.warn "$SRC not found" && return

    mkdir -p "$METRICS"

    lib.run_task sloc-infer

}
