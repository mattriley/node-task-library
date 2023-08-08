#!/bin/bash

function tasks.test_only.infer {

    echo "test"

}

function tasks.test_only {

    export NODE_OPTIONS="$NODE_OPTIONS --test-only"
    tasks.run_task "$(tasks.test_only.infer)"

}
