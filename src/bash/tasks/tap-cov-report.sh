#!/bin/bash

function tasks.tap_cov_report {

    set -e

    lib.run_task tap-test \
        --no-browser \
        --no-check-coverage \
        --coverage \
        --coverage-report="html" \
        "$@"

}
