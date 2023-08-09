#!/bin/bash

function tasks.test.precondition {

    fs.dir_absent "$TESTS" && echo "$TESTS not found"
    fs.dir_empty "$TESTS" && echo "No tests found"

}

function tasks.test.infer {

    infer.test

}

function tasks.test {

    # shellcheck disable=2068
    core.run_tasks "$(tasks.test.infer)" $@

}
