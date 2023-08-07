#!/bin/bash

function tasks.pre.infer {

    echo "pre-commit"

}

function tasks.pre {

    lib.run_task "$(tasks.pre.infer)"

}
