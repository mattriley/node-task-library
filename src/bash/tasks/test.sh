#!/bin/bash

function tasks.test.precondition {

    fs.dir_not_exists "$TESTS" && echo "$TESTS not found"
    fs.dir_empty "$TESTS" && echo "No tests found"

}

function tasks.test.infer {

    infer.test

}

function tasks.test {

    # shellcheck disable=2068
    tasks.run_tasks "$(tasks.test.infer)" $@

}
