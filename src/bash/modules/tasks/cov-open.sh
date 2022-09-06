#!/bin/bash

function tasks.cov_open {

    lib.run_task cov-report && \
    local report; report="$(set -- "$COVERAGE/**/index.html"; echo "$1")" && \
    open -a "Google Chrome" "$report"

}
