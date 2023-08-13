#!/bin/bash

function tasks.default.infer {

    echo "pre-commit"

}

function tasks.default {

    core.tasks.run_task "$(tasks.default.infer)"

}
