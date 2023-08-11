#!/bin/bash
# shellcheck disable=2068

function tasks.tap_cov_report {

    task_runner.run_task "tap-test" \
        --no-browser \
        --no-check-coverage \
        --coverage \
        --coverage-report="html" \
        $@

}
