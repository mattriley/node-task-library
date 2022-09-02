#!/bin/bash

function tasks.tap_cov_report {

    lib.run_task tap-test \
        --no-browser \
        --no-check-coverage \
        --coverage \
        --coverage-report="html" \
        "$@"

}
