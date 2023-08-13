#!/bin/bash

function tasks.config_gen.infer {

    echo "node-version-gen | nvmrc-gen | $(infer.config)"

}

function tasks.config_gen {

    core.tasks.run_tasks "$(tasks.config_gen.infer)" "$@"

}
