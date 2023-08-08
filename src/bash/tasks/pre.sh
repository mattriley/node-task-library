#!/bin/bash

function tasks.pre.infer {

    echo "pre-commit"

}

function tasks.pre {

    tasks.run_task "$(tasks.pre.infer)"

}
