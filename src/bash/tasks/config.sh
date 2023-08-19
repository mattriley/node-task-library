#!/bin/bash

function tasks.config.infer {

    echo "node-version | nvmrc | $(infer.config)"

}

function tasks.config {

    core.tasks.run_tasks "$(tasks.config.infer)" "$@"

}
