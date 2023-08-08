#!/bin/bash
# shellcheck disable=2068

function tasks.tap_cov_report {

    tasks.run_task "tap-test" \
        --no-browser \
        --no-check-coverage \
        --coverage \
        --coverage-report="html" \
        $@

}
