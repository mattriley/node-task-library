#!/bin/bash

function tasks.test.precondition {

    [ ! -d "$TESTS" ] && echo "$TESTS not found"
    fs.is_dir_empty "$TESTS" && echo "No tests found"

}

function tasks.test.infer {

    infer.test

}

function tasks.test {

    lib.run_tasks "$(tasks.test.infer)" "$@"

}
