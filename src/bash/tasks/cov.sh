#!/bin/bash

function tasks.cov.infer {

    infer.cov

}

function tasks.cov.precondition {

    fs.dir_absent "$TESTS" && echo "$TESTS not found"

}

function tasks.cov {

    task_runner.run_tasks "$(tasks.cov.infer)" "$@"

}
