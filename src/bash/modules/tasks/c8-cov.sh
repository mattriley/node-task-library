#!/bin/bash

function tasks.c8_cov {

    lib.run_task c8-cov-report \
        --check-coverage \
        --branches "$COV_BRANCHES" \
        --lines "$COV_LINES" \
        --functions "$COV_FUNCTIONS" \
        --statements "$COV_STATEMENTS"

}
