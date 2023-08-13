#!/bin/bash

function tasks.pre.infer {

    echo "pre-commit"

}

function tasks.pre {

    core.tasks.run_task "$(tasks.pre.infer)"

}
