#!/bin/bash

function tasks.cov_open {

    set -e

    lib.run_task cov-report

    report="$(set -- "$COVERAGE/**/index.html"; echo "$1")"
    open -a "Google Chrome" "$report"

}
