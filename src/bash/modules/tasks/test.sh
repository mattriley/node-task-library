#!/bin/bash

function tasks.test.precondition {

    fs.is_dir_empty "$TESTS" && echo "No tests found"

}

function tasks.test.infer {

    infer.test

}

function tasks.test {

    lib.run_tasks "$(tasks.test.infer)" "$@"

}
