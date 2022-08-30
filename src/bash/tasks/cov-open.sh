#!/bin/bash

function cov_open {

    set -e

    run_task cov-report

    report="$(set -- "$COVERAGE/**/index.html"; echo "$1")"
    open -a "Google Chrome" "$report"

}
