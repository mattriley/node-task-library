#!/bin/bash

function tasks.c8_cov_report {

    # shellcheck disable=SC2068
    c8 \
        --all \
        --src "$SRC" \
        --reporter="text-summary" \
        --reporter="json-summary" \
        --reporter="lcov" \
        $@ \
        "$TASK_LIBRARY_ROOT/bin/task" test

}
