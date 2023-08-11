#!/bin/bash

function tasks.default.infer {

    echo "pre-commit"

}

function tasks.default {

    task_runner.run_task "$(tasks.default.infer)"

}
