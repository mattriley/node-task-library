#!/bin/bash

function tasks.test.precondition {

    fs.is_dir_empty "$TESTS" && "No tests found"

}

function tasks.test {

    lib.run_tasks "$(infer.test)" "$@"

}
