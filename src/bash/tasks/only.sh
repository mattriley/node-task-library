#!/bin/bash

function tasks.only.infer {

    echo "test-only"

}

function tasks.only {

    task_runner.run_task "$(tasks.only.infer)"

}
