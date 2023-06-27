#!/bin/bash

function tasks.test.precondition {

    [ ! -d "$TESTS" ] && echo "$TESTS not found"
    fs.is_dir_empty "$TESTS" && echo "No tests found"

}

function tasks.test.infer {

    infer.test

}

function tasks.test {

    [ -f "$CUSTOM_TEST_RUNNER" ] && "$CUSTOM_TEST_RUNNER" && return "$?"

    lib.run_tasks "$(tasks.test.infer)" "$@"

}
