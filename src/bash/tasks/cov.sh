#!/bin/bash

function tasks.cov.infer {

    infer.cov

}

function tasks.cov.precondition {

    fs.dir_not_exists "$TESTS" && echo "$TESTS not found"

}

function tasks.cov {

    core.run_tasks "$(tasks.cov.infer)" "$@"

}
