#!/bin/bash

function tasks.pre.infer {

    echo "pre-commit"

}

function tasks.pre {

    core.run_task "$(tasks.pre.infer)"

}
