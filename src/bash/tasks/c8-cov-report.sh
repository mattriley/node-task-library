#!/bin/bash

function tasks.c8_cov_report {

    set -e

    c8 \
        --all \
        --src "$SRC" \
        --reporter="text-summary" \
        --reporter="json-summary" \
        --reporter="lcov" \
        "$@" \
        "$TASK_LIBRARY_ROOT/bin/task" test

}
