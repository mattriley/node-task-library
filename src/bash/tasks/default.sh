#!/bin/bash

function tasks.default.infer {

    echo "pre-commit"

}

function tasks.default {

    core.run_task "$(tasks.default.infer)"

}
