#!/bin/bash

function tasks.configure.infer {

    echo "config-gen"

}

function tasks.configure {

    core.tasks.run_task "$(tasks.configure.infer)"

}
