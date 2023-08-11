#!/bin/bash

function tasks.pre.infer {

    echo "pre-commit"

}

function tasks.pre {

    task_runner.run_task "$(tasks.pre.infer)"

}
