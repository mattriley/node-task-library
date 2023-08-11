#!/bin/bash

function tasks.config_gen.infer {

    echo "node-version-gen | nvmrc-gen | $(infer.config)"

}

function tasks.config_gen {

    task_runner.run_tasks "$(tasks.config_gen.infer)" "$@"

}
