#!/bin/bash

function tasks.tap_cov {

    task_runner.run_task "tap-cov-report" \
        --no-browser \
        --check-coverage \
        --branches "$COV_BRANCHES" \
        --lines "$COV_LINES" \
        --functions "$COV_FUNCTIONS" \
        --statements "$COV_STATEMENTS"

}
