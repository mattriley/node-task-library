#!/bin/bash

function tap_cov_report {

    set -e

    run_task tap-test \
        --no-browser \
        --no-check-coverage \
        --coverage \
        --coverage-report="html" \
        "$@"

}
