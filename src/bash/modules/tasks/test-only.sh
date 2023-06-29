#!/bin/bash

function tasks.test_only.infer {

    echo "test"

}

function tasks.test_only {

    export NODE_OPTIONS+=" --test-only"
    lib.run_task "$(tasks.test_only.infer)"

}
