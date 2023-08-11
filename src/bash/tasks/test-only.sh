#!/bin/bash

function tasks.test_only.infer {

    echo "test"

}

function tasks.test_only {

    export NODE_OPTIONS="$NODE_OPTIONS --test-only"
    task_runner.run_task "$(tasks.test_only.infer)"

}
