#!/bin/bash

function tasks.sloc {

    [ ! -d "$SRC" ] && ui.task_warn "$SRC not found" && return

    mkdir -p "$METRICS"

    lib.run_tasks "$(infer.sloc)"

}
